import 'package:flutter/material.dart';
import 'package:grpc_test/models/app_user.dart';
import 'package:grpc_test/services/user_service.dart';
import 'package:grpc_test/screens/map_page.dart';

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
            future: UserService.instance.findLastMessage(widget.anotherUser),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      child: Text(snapshot.requireData,
                          style: TextStyle(fontSize: 22)),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      child: Text(snapshot.requireData,
                          style: TextStyle(fontSize: 22)),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a msg'),
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
                      child: Text('Send Msg!', style: TextStyle(fontSize: 22))),
                  ElevatedButton(
                    onPressed: () async {
                      var location = await UserService.instance
                          .getUserLocation(widget.anotherUser);
                      if (location != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MapPage(
                              location: location,
                            ),
                          ),
                        );
                      } else
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: const Text('AlertDialog Title'),
                                  content: const Text('Location not found'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ));
                    },
                    child: Text("Show Location"),
                  )
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
