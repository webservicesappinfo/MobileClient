import 'package:flutter/material.dart';
import 'package:grpc_test/models/app_user.dart';
import 'package:grpc_test/screens/chat_page.dart';
import 'package:grpc_test/screens/profile_page.dart';
import 'package:grpc_test/services/auth.dart';
import 'package:grpc_test/services/user_service.dart';
import 'package:grpc_test/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void choiceAction(String choice) {}

  void floatBtnAction() {
    print("floatBtn click");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: <Widget>[
          PopupMenuButton<String>(onSelected: (String choice) {
            if (choice == Constants.profile) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            } else if (choice == Constants.signOut) {
              AuthService().signOut();
            }
          }, itemBuilder: (BuildContext context) {
            return Constants.settingsBtnChoices.map((String choice) {
              return PopupMenuItem<String>(value: choice, child: Text(choice));
            }).toList();
          })
        ],
      ),
      body: Form(
        key: UniqueKey(),
        child: FutureBuilder<List<AppUser>>(
            future: UserService.instance.getUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: snapshot.requireData.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Column(
                          children: <Widget>[
                            Text(
                              "Current user: ${AuthService().user?.name}/${AuthService().user?.email}",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        );
                      } else {
                        return ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatPage(
                                      anotherUser:
                                          snapshot.requireData[index - 1]),
                                ),
                              );
                            },
                            child: Text(
                                snapshot.requireData[index - 1].name ?? "",
                                style: TextStyle(fontSize: 15)));
                      }
                    });
              } else if (snapshot.hasError)
                return Text("${snapshot.error}");
              else
                return Center(child: CircularProgressIndicator());
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => floatBtnAction,
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
