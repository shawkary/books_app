import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:ibrahim_project/features/search/presentation/views/widgets/search_text_field.dart';



class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     return const Column(
            children: [
              SearchTextField(),
              SizedBox(height: 20),
              SearchListView(),
            ],
          );
  }
}