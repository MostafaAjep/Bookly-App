import 'package:bokkly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_details_bar.dart';
import 'package:bokkly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SafeArea(child: CustomDetailsBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 6,
          ),
          Text('J.K. Rowling',
              style: Styles.textStyle18.copyWith(color: Colors.grey)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.31),
            child: const BookRating(),
          ),
        ],
      ),
    );
  }
}
