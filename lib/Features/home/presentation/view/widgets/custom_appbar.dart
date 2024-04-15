import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, });

  @override
  Widget build(BuildContext context) {
    return AppBar(
leading:const Column(
  children: [
          Text(
            'by',
            style: Styles.by
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'MA',
              style: Styles.ma
            ),
          ),
        ],
),
      backgroundColor: const Color.fromARGB(255, 4, 23, 38),
      centerTitle: true,
title: const Text(
        ' السوق  ',
        style: Styles.titlebar
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
