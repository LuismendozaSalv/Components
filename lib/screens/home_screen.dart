import 'package:flutter/material.dart';
import 'package:flutter_components/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Components")),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: Colors.amber),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, _) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
