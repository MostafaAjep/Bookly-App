import 'package:bokkly_app/Features/home/presentation/views/widgets/smaller_books_list_view.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BottomBooksSection extends StatelessWidget {
  const BottomBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You Can Also Like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(height: 12),
        const SmallerBooksListView(),
      ],
    );
  }
}
