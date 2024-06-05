import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import 'package:ibrahim_project/features/home/presentation/views/book_details_view_widgets/two_buttons.dart';
import 'package:ibrahim_project/features/home/presentation/views/home_view_widgets/newest_list_view_item.dart';
import '../../../../../core/utiles/styles.dart';
import 'book_details_book_image.dart';
import 'similar_list_view.dart';
import 'book_details_app_bar.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(this.item, {super.key});

  final Items item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 30),
          BookDetailsBigImage(item.volumeInfo!),
          const SizedBox(height: 20),
          Text('${item.volumeInfo!.title}',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30),
          const SizedBox(height: 5),
          Text(
              item.volumeInfo!.authors!.isNotEmpty ? item.volumeInfo!.authors![0] : 'unknown',
              style: Styles.textStyle16
                  .copyWith(color: Colors.grey, fontStyle: FontStyle.italic)),
          const SizedBox(height: 15),
          BookRating(item.volumeInfo!),
          const SizedBox(height: 30),
          TwoButtons(item),
          const SizedBox(height: 40),
          const Align(alignment: AlignmentDirectional.topStart,
              child: Text('   You can also like', style: Styles.textStyle14)),
          const SizedBox(height: 15),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
