import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const SectionTitle({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: press,
            style: TextButton.styleFrom(disabledForegroundColor: kActiveColor),
            child: const Text("Sell all"),
          )
        ],
      ),
    );
  }
}
