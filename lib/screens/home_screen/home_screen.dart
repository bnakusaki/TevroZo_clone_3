import 'package:flutter/material.dart';
import 'package:tevrozoclone3/screens/home_screen/introductory_message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CupertinoNavigationBar(),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Placeholder(),
            Align(
              alignment: Alignment.bottomCenter,
              child: IntroductoryMessage(),
            )
          ],
        ),
      ),
    );
  }
}
