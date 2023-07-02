import 'package:familytree/Screens/Login/login_screen.dart';
import 'package:familytree/Screens/Login/register_screen.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final Function press;
  final bool login;
  const AlreadyHaveAccount({
    required this.press,
    this.login = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? "Don't have an account? " : "I have an account? "),
        GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return login ? const Register() : const Login();
            }))
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: Colors.blue[900]),
          ),
        ),
      ],
    );
  }
}
