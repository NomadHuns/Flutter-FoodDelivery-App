import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';
import 'package:foodapp/model/demo_data.dart';
import 'package:foodapp/views/home/widgets/restaurant_info_medium_card.dart';

class MediumCardScrollView extends StatelessWidget {
  const MediumCardScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            demoMediumCardData.length,
                (index) => Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: RestaurantInfoMediumCard(
                title: demoMediumCardData[index]['name'],
                image: demoMediumCardData[index]['image'],
                location: demoMediumCardData[index]['location'],
                rating: demoMediumCardData[index]['rating'],
                deliveryTime: demoMediumCardData[index]['delivertTime'],
                press: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}