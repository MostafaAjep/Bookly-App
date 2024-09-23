import 'package:bokkly_app/Features/home/presentation/maneger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bokkly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl: state
                          .books[index].volumeInfo?.imageLinks?.thumbnail ??
                      'https://books.google.com/books/content?id=jKBQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errmessage: state.errorMessage);
          // return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
