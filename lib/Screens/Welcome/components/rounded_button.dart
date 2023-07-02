import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Color color, textColor;
  final Function press;

  const RoundedButton({
    Key? key,
    required this.label,
    required this.color,
    required this.press,
    required this.size,
    required this.textColor,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: size.height * 0.08,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
          onPressed: () => press(),
          child: Text(
            label,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
