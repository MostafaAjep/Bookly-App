import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 16, left: 16, right: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Logo.png',
            width: 80,
            height: 16,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            // ignore: deprecated_member_use
            icon: const Icon(FontAwesomeIcons.search, size: 20),
            splashRadius: 18,
          ),
        ],
      ),
    );
  }
}
