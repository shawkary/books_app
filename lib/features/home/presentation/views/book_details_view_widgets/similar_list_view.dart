import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/core/errors/custom_error_widget.dart';
import 'package:ibrahim_project/features/home/presentation/manager/similar_cubit/cubit.dart';
import 'package:ibrahim_project/features/home/presentation/manager/similar_cubit/states.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (BuildContext context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 120,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                      aspectRatio: 1/1.6,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
                        imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                      )
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        }else if(state is SimilarBooksError){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
