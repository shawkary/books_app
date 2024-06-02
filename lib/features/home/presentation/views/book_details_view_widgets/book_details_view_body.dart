import 'package:flutter/material.dart';
import 'book_details_app_bar.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BookDetailsAppBar(),
        ],
      ),
    );
  }
}
