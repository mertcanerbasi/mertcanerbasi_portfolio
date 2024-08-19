import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const Border(
        right: BorderSide(color: Constants.accentColor),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          DrawerListTile(
            title: "Portfolio",
            press: () {
              Navigator.pop(context);
              context.read<MenuAppController>().scrollToSection(0);
            },
          ),
          DrawerListTile(
            title: "About",
            press: () {
              Navigator.pop(context);
              context.read<MenuAppController>().scrollToSection(800);
            },
          ),
          DrawerListTile(
            title: "Work",
            press: () {
              Navigator.pop(context);
              context.read<MenuAppController>().scrollToSection(3250);
            },
          ),
          DrawerListTile(
            title: "Contact",
            press: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      style: ListTileStyle.drawer,
      title: Text(
        title,
        style: AppTextStyles.w200_16.copyWith(color: Constants.accentColor),
      ),
    );
  }
}
