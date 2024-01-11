import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class Grocery extends StatelessWidget {
  const Grocery(this.ctx, this.index, {super.key});

  final BuildContext ctx;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(groceryItems[index].name),
      leading: Container(
        width: 24,
        height: 24,
        color: groceryItems[index].category.color,
      ),
      trailing: Text(
        groceryItems[index].quantity.toString(),
      ),
    );
  }
}
