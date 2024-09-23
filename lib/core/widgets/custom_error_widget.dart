import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errmessage});
  final String errmessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errmessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
