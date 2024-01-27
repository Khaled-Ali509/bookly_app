import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {Key? key, required this.borderRadius, required this.imageUrl})
      : super(key: key);
  final BorderRadius borderRadius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: AspectRatio(
        aspectRatio: 2.5 / 4.1,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context , url , error )=>const Icon(Icons.error_outline) ,
        ),
      ),
    );
  }
}
