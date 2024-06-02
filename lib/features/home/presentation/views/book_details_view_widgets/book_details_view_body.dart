import 'package:flutter/material.dart';
import '../../../../../core/utiles/styles.dart';
import 'book_details_app_bar.dart';
import 'book_details_book_image.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BookDetailsAppBar(),
          SizedBox(height: 40),
          BookDetailsBigImage(),
          SizedBox(height: 30),
          Text('title',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30),
        ],
      ),
    );
  }
}
