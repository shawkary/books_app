import 'package:flutter/material.dart';
import '../../../../../core/utiles/styles.dart';
import 'custom_app_bar.dart';
import 'newest_list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 50),
          Padding(padding: EdgeInsets.only(left: 30),
              child: Text('Newest Books', style: Styles.textStyle18)),
          SizedBox(height: 20),
          NewestListView(),
        ],
      ),
    );
  }
}