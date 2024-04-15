import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class CustomAppbarCalc extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarCalc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      centerTitle: true,
      title: Text(' السوق  ',
          style: Styles.titlebar.copyWith(color: Colors.black)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
