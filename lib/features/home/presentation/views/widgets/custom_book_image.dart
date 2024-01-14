import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.borderRadius}) : super(key: key);
final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4.1,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius:borderRadius,
            color: Colors.blue,
            image: const DecorationImage(
              fit: BoxFit.fill,
            image:  AssetImage(
                AssetData.testImage,
            ),
          )
        ),
      ),
    );
  }
}
