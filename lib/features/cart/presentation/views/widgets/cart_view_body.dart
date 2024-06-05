import 'package:flutter/material.dart';
import 'package:ibrahim_project/constants.dart';
import 'package:ibrahim_project/features/cart/presentation/cart_cubit/cubit.dart';
import 'cart_list_view_item.dart';


class CartViewBody extends StatelessWidget {
  const CartViewBody(this.cubit, {super.key});
  final CartCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
             padding: const EdgeInsets.only(left: 30.0),
             child: ListView.separated(
               itemBuilder: (context, index) {
                 return CartListViewItem(index, cubit);
               },
               separatorBuilder: (context, index) => const SizedBox(height: 15),
               itemCount: titleList.length,
             ),
           );
  }
}
