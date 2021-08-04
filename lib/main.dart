import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc_test/screens/home_page.dart';
import 'package:grpc_test/screens/login_page.dart';
import 'package:grpc_test/screens/map_picker_page.dart';
import 'package:grpc_test/services/auth.dart';
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

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: AuthService().authStateChange(),
        builder: (_, snapshot) {
          FirebaseAuth.instance.currentUser?.reload();
          final isSignedIn = snapshot.data != null && AuthService().isSignedIn;
          //return isSignedIn ? HomePage() : LoginPage();
          return MapPickerPage();
        },
      ),
      title: "Grpc_test",
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
