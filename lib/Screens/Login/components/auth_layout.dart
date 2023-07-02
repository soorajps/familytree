import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final List<Widget> children;
  String title;
  AuthLayout({
    required this.children,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: SizedBox(
              width: size.width * 0.9,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: size.height * 0.3),
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/login_user.png')),
                    ...children
                  ]),
            ),
          )),
    );
  }
}
