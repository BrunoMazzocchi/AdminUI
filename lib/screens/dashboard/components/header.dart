import 'package:admin_ui/screens/dashboard/components/profile_card.dart';
import 'package:admin_ui/screens/dashboard/components/search_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
            )
        ),
        const Spacer(flex: 2),
        const  Expanded(
          child: SearchField(),
        ),
        const ProfileCard(name: "User Test", image: "assets/images/profile_pic.png")
      ],
    );
  }
}

