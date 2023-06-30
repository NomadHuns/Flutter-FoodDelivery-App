import 'package:flutter/material.dart';
import 'package:foodapp/views/home/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppbar(),
        ],
      ),
    );
  }
}