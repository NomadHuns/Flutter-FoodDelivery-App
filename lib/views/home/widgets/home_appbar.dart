import 'package:flutter/material.dart';
import 'package:foodapp/_core/constants.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      elevation: 0,
      title: Column(
        children: [
          Text(
            "Delivery to".toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: kActiveColor),
          ),
          const Text(
            "San Francisco",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Filter",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
