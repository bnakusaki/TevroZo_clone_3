import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconly/iconly.dart';
import 'package:tevrozoclone3/core/dummy_data.dart';
import 'package:tevrozoclone3/screens/filter_widget/filter_widget.dart';
import 'package:tevrozoclone3/screens/items_screen/item_builder.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleTextStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.scrim),
          title: Text(l10n.brand),
          iconTheme: IconThemeData(color: Theme.of(context).colorScheme.scrim),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Theme.of(context).colorScheme.scrim,
                    content: Text(l10n.promoMsg1),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height - 120, right: 20, left: 20),
                  ));
                },
                icon: const Icon(IconlyLight.bag)),
            IconButton(onPressed: () {}, icon: const Icon(IconlyLight.star)),
            IconButton(
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) => const FilterWidget(),
                  );
                },
                icon: const Icon(Icons.menu)),
          ],
          bottom: AppBar(
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    l10n.featuredItems,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.63,
              crossAxisCount: 2,
              children: List.generate(
                featuredItemsData.length,
                (index) => ItemBuilder(model: featuredItemsData[index]),
              )),
        ));
  }
}
