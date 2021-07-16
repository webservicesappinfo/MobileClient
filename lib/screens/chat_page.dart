import 'package:flutter/material.dart';
import 'package:grpc_test/models/app_user.dart';
import 'package:grpc_test/services/user_service.dart';

class ChatPage extends StatefulWidget {
  final AppUser anotherUser;
  ChatPage({Key? key, required this.anotherUser}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Form(
        key: UniqueKey(),
        child: FutureBuilder<String>(
            future: UserService.instance.getLastMessage(widget.anotherUser),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        child: Text(snapshot.requireData,
                            style: TextStyle(fontSize: 22)),
                            alignment: Alignment.topLeft,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        child: Text(snapshot.requireData,
                            style: TextStyle(fontSize: 22)),
                            alignment: Alignment.topRight,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Enter a msg'),
                      controller: myController,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await UserService.instance
                            .sendMessage(widget.anotherUser, myController.text);
                        setState(() {
                          myController.clear();
                        });
                      },
                      child: Text('Send Msg!', style: TextStyle(fontSize: 22)))
                ]);
              } else if (snapshot.hasError)
                return Text("${snapshot.error}");
              else
                return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
