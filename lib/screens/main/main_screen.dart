import 'package:admin_ui/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/menu_app_controller.dart';
import 'components/body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: context.read<MenuAppController>().scaffoldKey,
        drawer: const SideMenu(),
        body: const Body());
  }
}



