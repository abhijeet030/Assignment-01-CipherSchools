import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.imgAdd,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String imgAdd;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text('hi'),
    ));
  }
}
