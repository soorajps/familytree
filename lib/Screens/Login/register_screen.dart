import 'package:familytree/Screens/Login/components/already_have_account.dart';
import 'package:familytree/Screens/Login/components/auth_layout.dart';
import 'package:familytree/Screens/Login/components/input_element.dart';
import 'package:familytree/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AuthLayout(title: 'Register', children: <Widget>[
      const InputElement(
          child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.person, color: Colors.black),
          hintText: 'Name',
          border: InputBorder.none,
        ),
      )),
      const InputElement(
          child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: Colors.black),
          hintText: 'Your Email',
          border: InputBorder.none,
        ),
      )),
      const InputElement(
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            icon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: InputBorder.none,
          ),
        ),
      ),
      RoundedButton(
        label: 'REGISTER',
        color: Colors.blue,
        textColor: Colors.white,
        press: () => {},
        size: size,
      ),
      AlreadyHaveAccount(
        login: false,
        press: () => {},
      )
    ]);
  }
}
