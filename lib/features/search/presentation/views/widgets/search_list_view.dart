import 'package:flutter/material.dart';
import '../../../../home/presentation/views/home_view_widgets/newest_list_view_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
     return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const NewestListViewItem();
                },
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemCount: 10,
              ),
            ),
          );
  }
}
