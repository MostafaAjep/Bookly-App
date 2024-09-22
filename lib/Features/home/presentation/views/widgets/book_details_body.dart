import 'package:bokkly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/bottom_books_section.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_details_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SafeArea(child: CustomDetailsBar()),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 32)),
                BottomBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
