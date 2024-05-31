import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getImage(String imgUrl) {
  if (imgUrl != "") {
    return Image.network(
      imgUrl,
      fit: BoxFit.fill,
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
          ),
        );
      },
      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const SizedBox();
      },
    );
  } else {
    return Image.asset("assets/images/noImage.png");
  }
}
