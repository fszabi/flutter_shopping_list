import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class Grocery extends StatelessWidget {
  const Grocery(
    this.ctx,
    this.index,
    this.groceryItems,
    this.removeItem, {
    super.key,
  });

  final BuildContext ctx;
  final int index;
  final List<GroceryItem> groceryItems;
  final void Function(GroceryItem item) removeItem;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        removeItem(groceryItems[index]);
      },
      key: ValueKey(groceryItems[index].id),
      child: ListTile(
        title: Text(groceryItems[index].name),
        leading: Container(
          width: 24,
          height: 24,
          color: groceryItems[index].category.color,
        ),
        trailing: Text(
          groceryItems[index].quantity.toString(),
        ),
      ),
    );
  }
}
