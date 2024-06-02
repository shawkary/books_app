import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/assets.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import '../book_details_view_widgets/book_details_view_body.dart';


class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        navigateTo(context, const BookDetailsViewBody());
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 1 / 1.6,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: AssetsData.tiger,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
