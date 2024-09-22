import 'package:bokkly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              title: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              border: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              title: 'Free Preview',
              backgroundColor: Color.fromARGB(239, 239, 131, 98),
              textColor: Colors.white,
              fontWeight: FontWeight.normal,
              border: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
