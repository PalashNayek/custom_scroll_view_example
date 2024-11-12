// item_view_model.dart
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemViewModel extends ChangeNotifier {
  List<Item> items = [
    Item(title: 'Item 1', description: 'Description for Item 1'),
    Item(title: 'Item 2', description: 'Description for Item 2'),
    Item(title: 'Item 3', description: 'Description for Item 3'),
    // Add more items as needed
  ];
}
