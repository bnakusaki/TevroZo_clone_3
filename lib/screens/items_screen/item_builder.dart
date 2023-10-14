import 'package:flutter/material.dart';
import 'package:tevrozoclone3/screens/items_screen/featured_item_model.dart';
import 'package:tevrozoclone3/screens/purchase_screen/purchase_screen.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
    required this.model,
  });

  final FeaturedItemModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PurchaseScreen(),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image(
              height: 230,
              width: double.infinity,
              image: NetworkImage(model.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            model.itemName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            model.brandName,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black54,
                ),
          ),
          Text(
            model.price,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
