import 'package:admin_ui/screens/dashboard/dashboard_screen.dart';
import 'package:admin_ui/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              // Default flex 1
              child: SideMenu(),
            ),
          const Expanded(
            // It takes 5/6 of the screen
            flex: 5,
            child: DashboardScreen(),
          )
        ],
      ),
    );
  }
}
