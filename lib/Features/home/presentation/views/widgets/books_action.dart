import 'package:bokkly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bokkly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              title: "${bookModel.volumeInfo?.pageCount}\$",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              border: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              title: 'Free Preview',
              backgroundColor: const Color.fromARGB(239, 239, 131, 98),
              textColor: Colors.white,
              fontWeight: FontWeight.normal,
              border: const BorderRadius.only(
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
