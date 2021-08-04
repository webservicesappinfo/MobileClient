import 'package:flutter/material.dart';
import 'package:grpc_test/services/auth.dart';
import 'package:grpc_test/screens/home_page.dart';
import 'package:grpc_test/screens/map_page.dart';
import 'package:grpc_test/screens/map_picker_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProfilePage')),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(AuthService().user?.name ?? "NoName"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPickerPage(),
                  ),
                );
              },
              child: Text("Set Location"),
            )
          ],
        ),
      ),
    );
  }
}
