import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';
import 'package:foodapp/views/home/widgets/home_appbar.dart';
import 'package:foodapp/views/home/widgets/image_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppbar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: ImageCarousel(),
          ),
        ],
      ),
    );
  }
}
