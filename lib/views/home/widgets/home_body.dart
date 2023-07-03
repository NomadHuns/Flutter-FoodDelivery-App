import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';
import 'package:foodapp/views/home/widgets/home_appbar.dart';
import 'package:foodapp/views/home/widgets/image_carousel.dart';
import 'package:foodapp/views/home/widgets/medium_card_scroll_view.dart';
import 'package:foodapp/views/home/widgets/section_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
        const MediumCardScrollView(),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverToBoxAdapter(
            child: Image.asset("assets/images/Banner.png"),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SectionTitle(
            title: "Best Picks",
            press: () {},
          ),
        ),
        const MediumCardScrollView(),
      ],
    );
  }
}
