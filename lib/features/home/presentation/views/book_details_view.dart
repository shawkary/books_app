import 'package:flutter/material.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/VolumeInfo.dart';
import 'book_details_view_widgets/book_details_view_body.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(VolumeInfo as VolumeInfo),
    );
  }
}
