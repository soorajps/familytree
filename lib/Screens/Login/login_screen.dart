import 'package:familytree/Screens/Login/components/already_have_account.dart';
import 'package:familytree/Screens/Login/components/auth_layout.dart';
import 'package:familytree/Screens/Login/components/input_element.dart';
import 'package:familytree/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginFormState();
}

class LoginFormState extends State<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AuthLayout(title: 'Login', children: <Widget>[
      Form(
          key: _loginFormKey,
          child: Column(children: [
            InputElement(
              child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person, color: Colors.black),
                      hintText: 'Your Email',
                      border: InputBorder.none)),
            ),
            InputElement(
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: InputBorder.none),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter User Name";
                  }
                  return null;
                },
              ),
            ),
            RoundedButton(
              label: 'LOGIN',
              color: Colors.blue,
              textColor: Colors.white,
              press: () => {if (_loginFormKey.currentContext!.validate()) {}},
              size: size,
            ),
          ])),
      AlreadyHaveAccount(
        press: () => {},
      )
    ]);
  }
}
