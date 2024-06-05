import 'package:flutter/material.dart';
import 'package:ibrahim_project/core/utiles/components.dart';
import '../../../../cart/presentation/views/cart_view.dart';


class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, size: 30, color: Colors.white,),
          ),
          const Spacer(),
          IconButton(
            onPressed: ()
            {
              navigateTo(context, const CartView());
            },
            icon: const Icon(Icons.shopping_cart_outlined, size: 30, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
