import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/core/errors/custom_error_widget.dart';
import 'package:ibrahim_project/features/search/presentation/search_cubit/cubit.dart';
import 'package:ibrahim_project/features/search/presentation/search_cubit/states.dart';
import '../../../../home/presentation/views/home_view_widgets/newest_list_view_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksStates>(
      builder: (BuildContext context, state) {
        if (state is SearchBooksSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return NewestListViewItem(state.searchBooks[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemCount: state.searchBooks.length,
              ),
            ),
          );
        }else if(state is SearchBooksError){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const Center(child: Text(''));
        }
      },
    );
  }
}
