import 'package:flutter/material.dart';
import 'package:ibrahim_project/constants.dart';
import 'package:ibrahim_project/core/utiles/cache_helper.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utiles/styles.dart';


class TwoButtons extends StatelessWidget {
  const TwoButtons(this.item, {super.key});
  final Items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MaterialButton(
            onPressed: ()
            {
              if(
                item.volumeInfo!.title != null &&
                item.volumeInfo!.imageLinks!.thumbnail != null &&
                item.volumeInfo!.previewLink != null &&
                item.volumeInfo!.authors != null
              ) {
                if (!titleList.contains(item.volumeInfo!.title)) {
                  titleList.add(item.volumeInfo!.title!);
                  imageList.add(item.volumeInfo!.imageLinks!.thumbnail!);
                  authorList.add(item.volumeInfo!.authors!.isNotEmpty ?
                    item.volumeInfo!.authors![0] : 'Unknown');
                  urlList.add(item.volumeInfo!.previewLink!);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('The book has added successfully')));
                }
              }
              CacheHelper.saveValue(key: 'titleList', value: titleList);
              CacheHelper.saveValue(key: 'imageList', value: imageList);
              CacheHelper.saveValue(key: 'authorList', value: authorList);
              CacheHelper.saveValue(key: 'urlList', value: urlList);
            },
            shape: const OutlineInputBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),),
                borderSide: BorderSide.none),
            minWidth: MediaQuery.of(context).size.width * .4,
            height: 50,
            color: titleList.contains(item.volumeInfo!.title) ? Colors.grey.shade800 : Colors.white,
            child: Text('Add to cart', style: Styles.textStyle14.copyWith(color: Colors.black),),
          ),
          MaterialButton(
            onPressed: ()async{
              Uri uri = Uri.parse(item.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            shape: const OutlineInputBorder(borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),),
                borderSide: BorderSide.none),
            minWidth: MediaQuery.of(context).size.width * .4,
            height: 50,
            color: const Color(0xffEF8262),
            child: Text(getText('url')),
          )
        ],
      ),
    );
  }

  String getText(url) {
    if(url == null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}
