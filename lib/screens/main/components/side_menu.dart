import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'mertcanerbasiemk@gmail.com', // Replace with your email address
      query: Uri.encodeQueryComponent('Subject=Contact%20Request'),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

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
              _sendEmail(); // Call the email function
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
