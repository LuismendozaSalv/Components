import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_options.dart';
import 'package:flutter_components/screens/home_screen.dart';
import 'package:flutter_components/screens/inputs_screen.dart';
import 'package:flutter_components/screens/listview_screen.dart';

class AppRoutes {
  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: 'listView',
      icon: Icons.list,
      name: 'Listview Screen ',
      screen: ListviewScreen(),
    ),
    MenuOptions(
      route: 'inputs',
      icon: Icons.input,
      name: 'Inputs Screen ',
      screen: InputsScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
