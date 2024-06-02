import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/assets.dart';
import '../../../../../core/utiles/styles.dart';


class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

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
                  imageUrl: AssetsData.tiger,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'title',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20,
                      ),
                    ),
                    Text(
                      'author',
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
                        const BookRating(),
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
  const BookRating({super.key});

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
        Text('(pages 250)',
          style: Styles.textStyle14
              .copyWith(decoration: TextDecoration.none, color: Colors.grey),
        )
      ],
    );
  }
}
