import 'package:flutter/material.dart';

import 'newest_list_view_item.dart';


class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return const NewestListViewItem();
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: 10,
            ),
          );
  }
}
