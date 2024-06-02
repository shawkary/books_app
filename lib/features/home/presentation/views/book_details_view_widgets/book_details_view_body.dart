import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/book_details_view_widgets/two_buttons.dart';
import 'package:ibrahim_project/features/home/presentation/views/home_view_widgets/newest_list_view_item.dart';
import '../../../../../core/utiles/styles.dart';
import '../../../data/models/book_model/VolumeInfo.dart';
import 'book_details_book_image.dart';
import 'similar_list_view.dart';
import 'book_details_app_bar.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(this.volumeInfo, {super.key});

  final VolumeInfo volumeInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 40),
          BookDetailsBigImage(volumeInfo),
          const SizedBox(height: 30),
          Text('${volumeInfo.title}',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30),
          const SizedBox(height: 5),
          Text(
              volumeInfo.authors!.isNotEmpty ? volumeInfo.authors![0] : 'unknown',
              style: Styles.textStyle16
                  .copyWith(color: Colors.grey, fontStyle: FontStyle.italic)),
          const SizedBox(height: 15),
          BookRating(volumeInfo),
          const SizedBox(height: 30),
          TwoButtons(volumeInfo),
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
