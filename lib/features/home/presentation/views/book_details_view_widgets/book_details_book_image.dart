import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/assets.dart';


class BookDetailsBigImage extends StatelessWidget {
  const BookDetailsBigImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * .45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
              aspectRatio: 1/1.6,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                imageUrl: AssetsData.tiger,
              )
          ),
        ));
  }
}
