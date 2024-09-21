import 'package:bokkly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
