import 'package:ecomm/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 70,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(50),
            ),
          ),
        ),
        Positioned(
          top: 75,
          left: 5,
          child: Container(
            padding: const EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
