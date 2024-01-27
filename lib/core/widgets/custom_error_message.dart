import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({Key? key, required this.errorMessage})
      : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
