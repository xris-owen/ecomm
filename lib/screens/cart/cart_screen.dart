import 'package:ecomm/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
      ),
      body: Container(),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
