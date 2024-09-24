import 'package:bokkly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/bottom_books_section.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_details_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SafeArea(child: CustomDetailsBar()),
                BookDetailsSection(
                  book: book,
                ),
                const Expanded(child: SizedBox(height: 32)),
                const BottomBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
