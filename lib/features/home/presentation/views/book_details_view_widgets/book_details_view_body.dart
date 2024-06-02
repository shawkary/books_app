import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/presentation/views/book_details_view_widgets/two_buttons.dart';
import '../../../../../core/utiles/styles.dart';
import '../home_view_widgets/newest_list_view_item.dart';
import 'book_details_app_bar.dart';
import 'book_details_book_image.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 40),
          const BookDetailsBigImage(),
          const SizedBox(height: 30),
          const Text('title',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30),
          const SizedBox(height: 5),
          Text('author',
              style: Styles.textStyle16
                  .copyWith(color: Colors.grey, fontStyle: FontStyle.italic)),
          const SizedBox(height: 15),
          const BookRating(),
          const SizedBox(height: 30),
          const TwoButtons(),
        ],
      ),
    );
  }
}
