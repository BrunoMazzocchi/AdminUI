import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String image;
  const ProfileCard({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration:   BoxDecoration(
        borderRadius: const BorderRadius.all(
            Radius.circular(10)
        ),
        border: Border.all(color: Colors.white10),
        color: secondaryColor,
      ),
      child: Row(
        children: [
          Image.asset(image,
            height: 38,),
         if(!Responsive.isMobile(context)) Padding(
            padding:  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child:  Text(name),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

