import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:ibrahim_project/features/search/presentation/views/widgets/search_text_field.dart';
import '../../../../../core/utiles/serice_locator.dart';
import '../../../../home/data/repos/home_repo_impl.dart';
import '../../search_cubit/cubit.dart';
import '../../search_cubit/states.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SearchBooksCubit(getIt.get<HomeRepoImpl>()),
      child: BlocConsumer<SearchBooksCubit, SearchBooksStates>(
        builder: (BuildContext context, state) {
          return Column(
            children: [
              SearchTextField(SearchBooksCubit.get(context)),
              const SizedBox(height: 20),
              const SearchListView(),
            ],
          );
        }, listener: (BuildContext context, SearchBooksStates state) {  },
      ),
    );
  }
}