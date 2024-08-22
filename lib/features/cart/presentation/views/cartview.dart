import 'package:dalelapp/features/cart/presentation/widgets/cartViewBody.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CartViewBody(),
      ),
    );
  }
}
