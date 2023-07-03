import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  const RestaurantInfoMediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(6),
      ),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              location,
              maxLines: 1,
              style: const TextStyle(color: kBodyTextColor),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: kActiveColor,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2,
                        vertical: defaultPadding / 8,
                      ),
                      child: Text(
                        rating.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    Text("$deliveryTime min"),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: kBodyTextColor,
                    ),
                    const Spacer(),
                    const Text("Free delivery"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
