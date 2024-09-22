import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SmallerBooksListView extends StatelessWidget {
  const SmallerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
