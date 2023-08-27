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

const List<MenuItem> appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Counter',
    subtitle: 'Counter Screen con Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),
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
  MenuItem(
    title: 'ProgressIndicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.account_box_outlined,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank,
  ),
  MenuItem(
    title: 'Ui Controls',
    subtitle: 'Una serie de controles en flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subtitle: 'Tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll y pull',
    subtitle: 'Vistas infinitas y pull to refresh',
    link: '/infinitescroll',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Cambiar tema',
    subtitle: 'Cambiar tema de la aplicacion',
    link: '/themeChanger',
    icon: Icons.color_lens_outlined,
  ),
];
