import 'package:bokkly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //the list view has a default padding of 16 so we need to set it to 0
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) => const BestSellerListViewItem(),
        itemCount: 10,
        //shrinkWrap makes the list view build all of it's children at the first time
        // that s naturally bad to perform when you have a large list
        // so we use sliverFillRemaining on this widget so that it can be scrolled
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
