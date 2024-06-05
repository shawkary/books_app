import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import '../book_details_view.dart';


class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem(this.item, {super.key});
  final Items item;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        navigateTo(context, BookDetailsView(item));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 1 / 1.6,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: item.volumeInfo!.imageLinks!.thumbnail!,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
