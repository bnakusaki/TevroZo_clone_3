import 'package:flutter/material.dart';
import 'package:tevrozoclone3/core/dummy_data.dart';
import 'package:tevrozoclone3/screens/introductory_screen/introductory_message.dart';

class IntroductoryScreen extends StatelessWidget {
  const IntroductoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: double.infinity,
            width: double.infinity,
            image: NetworkImage(featuredItemsData[0].imagePath),
            fit: BoxFit.cover,
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: IntroductoryMessage(),
          )
        ],
      ),
    );
  }
}
