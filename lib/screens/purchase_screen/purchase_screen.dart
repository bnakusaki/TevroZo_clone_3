import 'package:flutter/material.dart';
import 'package:tevrozoclone3/core/dummy_data.dart';
import 'package:tevrozoclone3/screens/purchase_screen/specing.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            image: NetworkImage(featuredItemsData[0].imagePath),
            fit: BoxFit.cover,
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Specing(),
          )
        ],
      ),
    );
  }
}
