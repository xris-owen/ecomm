import 'package:ecomm/models/product_model.dart';
import 'package:ecomm/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 165,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: ProductCard(
                product: products[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}
