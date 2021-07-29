import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_test/generated/greet_gen/greet.pbgrpc.dart';
import 'package:grpc_test/generated/mobile_api_gen/mobile_api.pbgrpc.dart';
import 'package:grpc_test/screens/auth/google_login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc_test/screens/home_page.dart';
import 'package:grpc_test/screens/login_page.dart';
import 'package:grpc_test/services/auth.dart';
import 'global.dart' as global;
import 'services/user_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.getToken();

  FirebaseMessaging.instance.onTokenRefresh.listen((token) => {
        //_userService.saveToken(_userFromFirebaseUser(user), token)
      });

  FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
    if (message != null) {
      print("init msg");
    }
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('A new onMessageOpenedApp event was published!');
  });

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(
    MaterialApp(
      home: StreamBuilder<User?>(
        stream: AuthService().authStateChange(),
        builder: (_, snapshot) {
          FirebaseAuth.instance.currentUser?.reload();
          final isSignedIn = snapshot.data != null && AuthService().isSignedIn;
          return isSignedIn ? HomePage() : LoginPage();
        },
      ),
      title: "Grpc_test",
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    ),
  );
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _result = '';
  final myController = TextEditingController();

  GreeterClient client = GreeterClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  MobileApiClient userSeviceClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  void _callGrpcService() async {
    var response =
        await client.sayHello(new HelloRequest(name: myController.text));
    setState(() {
      _result = response.message;
    });
  }

  void _callUserSevice() async {
    var response = await userSeviceClient
        .apiGetUser(new ApiGetUserRequest(guid: myController.text));
    setState(() {
      _result = response.guid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a name'),
              controller: myController,
            ),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
                child: Text('Sign'),
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoogleLoginPage()))
                    })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _callUserSevice,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
