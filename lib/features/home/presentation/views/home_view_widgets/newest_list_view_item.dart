import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/VolumeInfo.dart';
import '../../../../../core/utiles/styles.dart';
import '../book_details_view.dart';


class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem(this.item, {super.key});
  final Items item;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, BookDetailsView(item));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .14,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 1 / 1.6,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: item.volumeInfo!.imageLinks!.thumbnail!,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        '${item.volumeInfo!.title}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20,
                      ),
                    ),
                    Text(
                      item.volumeInfo!.authors!.isNotEmpty? item.volumeInfo!.authors![0] : 'Unknown',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text('Free',
                            style: Styles.textStyle18
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 80,
                        ),
                        BookRating(item.volumeInfo!),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating(this.volumeInfo, {super.key});
  final VolumeInfo volumeInfo;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F)),
        const SizedBox(width: 3),
        Text('4.8',
            style:
            Styles.textStyle16.copyWith(decoration: TextDecoration.none)),
        const SizedBox(width: 10),
        Text(volumeInfo.pageCount != null ?
        'Pages(${volumeInfo.pageCount})' : '000',
          style: Styles.textStyle14
              .copyWith(decoration: TextDecoration.none, color: Colors.grey),
        )
      ],
    );
  }
}
