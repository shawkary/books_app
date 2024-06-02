import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utiles/styles.dart';


class TwoButtons extends StatelessWidget {
  const TwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MaterialButton(
            onPressed: (){},
            shape: const OutlineInputBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),),
                borderSide: BorderSide.none),
            minWidth: MediaQuery.of(context).size.width * .4,
            height: 50,
            color: Colors.white,
            child: Text('Free', style: Styles.textStyle16.copyWith(color: Colors.black),),
          ),
          MaterialButton(
            onPressed: ()async{
              Uri uri = Uri.parse('www.google.com');
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
