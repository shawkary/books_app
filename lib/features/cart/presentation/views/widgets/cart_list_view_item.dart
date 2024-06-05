import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim_project/constants.dart';
import 'package:ibrahim_project/features/cart/presentation/cart_cubit/cubit.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utiles/styles.dart';


class CartListViewItem extends StatelessWidget {
  const CartListViewItem(this.index, this.cubit, {super.key});
  final int index;
  final CartCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async
      {
        Uri uri = Uri.parse(urlList[index]);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
      }
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
                  imageUrl: imageList[index],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        titleList[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          authorList[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle14.copyWith(color: Colors.grey),
                        ),
                        IconButton(
                            onPressed: ()
                            {
                              cubit.deleteFromLists(index);
                            },
                            padding: const EdgeInsets.only(right: 20),
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 30,
                            )),
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
