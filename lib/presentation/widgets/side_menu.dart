import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final bool hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
            context.push(appMenuItems[value].link);
            widget.scaffoldKey.currentState?.closeDrawer();
          });
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, hasNotch ? 5 : 20, 16, 20),
            child: const Text('Main'),
          ),
          ...appMenuItems.sublist(0, 3).map(
                (menuItem) => NavigationDrawerDestination(
                  icon: Icon(menuItem.icon),
                  label: Text(menuItem.title),
                ),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Text('Otras rutas'),
          ),
          ...appMenuItems.sublist(3).map(
                (menuItem) => NavigationDrawerDestination(
                  icon: Icon(menuItem.icon),
                  label: Text(menuItem.title),
                ),
              ),
        ]);
  }
}
