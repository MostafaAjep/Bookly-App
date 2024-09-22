import 'package:bokkly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bokkly_app/Features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(height: 16),
          Text(
            'Results',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          SearchResultListView(),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

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
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
