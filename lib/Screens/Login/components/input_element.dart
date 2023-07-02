import 'package:flutter/material.dart';

class InputElement extends StatelessWidget {
  final Widget child;
  const InputElement({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
