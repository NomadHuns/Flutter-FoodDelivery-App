import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';
import 'package:foodapp/model/demo_data.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AspectRatio(
        aspectRatio: 1.81,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
              itemCount: demoBigImages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(demoBigImages[index]),
              ),
            ),
            Positioned(
              bottom: defaultPadding,
              right: defaultPadding,
              child: Row(
                children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding / 4),
                    child: HomeIndicatorDot(isActive: index == _currentPage),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeIndicatorDot extends StatelessWidget {
  final bool isActive;

  const HomeIndicatorDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white38,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
