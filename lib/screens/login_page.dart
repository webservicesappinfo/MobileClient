import 'package:flutter/material.dart';
import 'package:grpc_test/models/app_user.dart';
import 'package:grpc_test/services/auth.dart';
import 'package:grpc_test/services/user_service.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AuthService().loginWithGoogle().then((user) {
                if (user != null) UserService.instance.addUser(user);
              });
            },
            child: Text('Sign in')),
      ),
    );
  }
}
