import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  const DrawerListTile({Key? key, required this.title, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(icon,
        color: Colors.white54,
        height: 16,),
      title:  Text(title,
          style: const TextStyle(
              color: Colors.white54
          )),
    );
  }
}