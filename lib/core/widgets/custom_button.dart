import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textStyle,
    required this.text,
  }) : super(key: key);

  final Color backgroundColor;
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 48,
      child: TextButton(
        onPressed:()
        {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,

            )
        ),
        child:  Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
