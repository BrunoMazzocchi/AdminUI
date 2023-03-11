import 'package:admin_ui/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Row(
        children: [
          const Expanded(
            // Default flex 1
            child: SideMenu(),
          ),
          Expanded(
            // It takes 5/6 of the screen
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
