import 'package:bokkly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsData.logo,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
