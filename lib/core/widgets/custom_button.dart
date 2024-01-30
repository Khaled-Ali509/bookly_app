import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textStyle,
    required this.text,
     this.onPressed,
  }) : super(key: key);

  final Color backgroundColor;
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 48,
      child: TextButton(
        onPressed:onPressed,
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
