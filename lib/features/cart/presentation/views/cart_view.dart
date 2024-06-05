import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/cart/presentation/views/widgets/cart_view_body.dart';

import '../cart_cubit/cubit.dart';
import '../cart_cubit/states.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CartCubit(),
      child: BlocBuilder<CartCubit, CartStates>(
          builder: (BuildContext context, state) {
        CartCubit cubit = CartCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('My Cart'),
            centerTitle: true,
          ),
          body: CartViewBody(cubit),
        );
      }),
    );
  }
}
