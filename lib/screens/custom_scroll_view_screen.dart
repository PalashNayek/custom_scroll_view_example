// custom_scroll_view_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class CustomScrollViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  expandedHeight: 150.0,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Custom Scroll View'),
                    background: Image.asset(
                      'assets/header.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final item = model.items[index];
                      return ListTile(
                        title: Text(item.title),
                        subtitle: Text(item.description),
                      );
                    },
                    childCount: model.items.length,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
