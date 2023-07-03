import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';
import 'package:foodapp/model/demo_data.dart';
import 'package:foodapp/views/home/widgets/home_appbar.dart';
import 'package:foodapp/views/home/widgets/image_carousel.dart';
import 'package:foodapp/views/home/widgets/restaurant_info_medium_card.dart';
import 'package:foodapp/views/home/widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppbar(),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: ImageCarousel(),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SectionTitle(
              title: "Featured Partners",
              press: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                RestaurantInfoMediumCard(
                  title: demoMediumCardData[0]['name'],
                  image: demoMediumCardData[0]['image'],
                  location: demoMediumCardData[0]['location'],
                  rating: demoMediumCardData[0]['rating'],
                  deliveryTime: demoMediumCardData[0]['delivertTime'],
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}