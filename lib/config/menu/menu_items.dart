import 'package:flutter/material.dart';

class MenuItem {
  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
}

const AppMenuItems = <MenuItem>{
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Targetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
};
