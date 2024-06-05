import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/core/errors/custom_error_widget.dart';
import 'package:ibrahim_project/features/home/presentation/manager/featured_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/featured_cubit/states.dart';
import 'featured_list_view_item.dart';


class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return FeaturedListViewItem(state.books[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          );
        }else if(state is FeaturedBooksError){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
