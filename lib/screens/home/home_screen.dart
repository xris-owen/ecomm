import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm/models/models.dart';
import 'package:ecomm/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Homescreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Zero2Unicorn',
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.8,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: false,
            ),
            items: Category.categories
                .map((category) => CarouselCard(category: category))
                .toList(),
          )),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
