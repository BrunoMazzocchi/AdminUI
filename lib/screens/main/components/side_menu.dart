import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(title: 'Dashboard', icon: 'assets/icons/menu_dashbord.svg', onTap: () {  },),
            DrawerListTile(title: 'Documents', icon: 'assets/icons/menu_doc.svg', onTap: () {  },),
            DrawerListTile(title: 'Notification', icon: 'assets/icons/menu_notification.svg', onTap: () {  },),
            DrawerListTile(title: 'Profile', icon: 'assets/icons/menu_profile.svg', onTap: () {  },),
            DrawerListTile(title: 'Store', icon: 'assets/icons/menu_store.svg', onTap: () {  },),
            DrawerListTile(title: 'Tasks', icon: 'assets/icons/menu_task.svg', onTap: () {  },),
            DrawerListTile(title: 'Transactions', icon: 'assets/icons/menu_tran.svg', onTap: () {  },),
            DrawerListTile(title: 'Settings', icon: 'assets/icons/menu_setting.svg', onTap: () {  },),
          ],
        ),
      ),
    );
  }
}
