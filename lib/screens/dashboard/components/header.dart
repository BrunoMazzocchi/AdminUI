import 'package:admin_ui/screens/dashboard/components/profile_card.dart';
import 'package:admin_ui/screens/dashboard/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/menu_app_controller.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              context.read<MenuAppController>().controlMenu();
            },
          ),
        if(!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
            )
        ),
         if(!Responsive.isMobile(context))
         Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const  Expanded(
          child: SearchField(),
        ),
        const ProfileCard(name: "User Test", image: "assets/images/profile_pic.png")
      ],
    );
  }
}

