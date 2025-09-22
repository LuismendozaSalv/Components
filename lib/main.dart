import 'package:flutter/material.dart';
import 'package:flutter_components/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Componentes",
      initialRoute: 'home',
      routes: AppRoutes.getAppRoute(),
    );
  }
}
