import 'package:familytree/Screens/Login/login_screen.dart';
import 'package:familytree/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(color: Colors.blue[900]),
      child: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Family Tree',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: size.height * 0.6),
              RoundedButton(
                size: size,
                label: 'Login',
                color: Colors.white,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Login();
                  }));
                },
              ),
              RoundedButton(
                size: size,
                label: 'Register',
                color: Colors.white,
                textColor: Colors.black,
                press: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
