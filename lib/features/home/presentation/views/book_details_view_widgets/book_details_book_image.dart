import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/VolumeInfo.dart';

class BookDetailsBigImage extends StatelessWidget {
  const BookDetailsBigImage(this.volumeInfo, {super.key});
  final VolumeInfo volumeInfo;

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
                imageUrl: volumeInfo.imageLinks!.thumbnail!,
              )
          ),
        ));
  }
}
