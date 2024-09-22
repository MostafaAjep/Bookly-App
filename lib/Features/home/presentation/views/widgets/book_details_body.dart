import 'package:bokkly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_details_bar.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/smaller_books_list_view.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SafeArea(child: CustomDetailsBar()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 18),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle18.copyWith(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 6),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 20),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 32)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can Also Like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 12),
                const SmallerBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
