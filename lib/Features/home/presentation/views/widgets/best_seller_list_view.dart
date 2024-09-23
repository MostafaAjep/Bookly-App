import 'package:bokkly_app/Features/home/presentation/maneger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bokkly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              //the list view has a default padding of 16 so we need to set it to 0
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) => BestSellerListViewItem(
                bookModel: state.newestBooks[index],
              ),
              itemCount: state.newestBooks.length,
              //shrinkWrap makes the list view build all of it's children at the first time
              // that s naturally bad to perform when you have a large list
              // so we use sliverFillRemaining on this widget so that it can be scrolled
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errmessage: state.errorMessage);
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.26),
              const CircularProgressIndicator(),
            ],
          );
        }
      },
    );
  }
}
