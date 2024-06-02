import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/assets.dart';


class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
            height: 120,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                      aspectRatio: 1/1.6,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                        imageUrl: AssetsData.tiger,
                      )
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          );
  }
}
