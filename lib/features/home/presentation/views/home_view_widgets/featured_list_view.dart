import 'package:flutter/material.dart';
import 'featured_list_view_item.dart';


class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return FeaturedListViewItem();
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
  }
}
