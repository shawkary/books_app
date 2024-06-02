import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close, size: 30,),
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){},
            child: const Icon(Icons.shopping_cart_outlined, size: 30,),
          ),
        ],
      ),
    );
  }
}
