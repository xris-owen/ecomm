import 'package:ecomm/models/models.dart';
import 'package:ecomm/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  final Category category;
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) {
          return Center(
            child: ProductCard(
              product: categoryProducts[index],
              widthFactor: 2.2,
            ),
          );
        },
      ),
    );
  }
}
