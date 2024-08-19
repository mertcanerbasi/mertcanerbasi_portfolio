import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';
import 'package:mertcanerbasi/widgets/app_button.dart';
import 'package:provider/provider.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor:
          Constants.primaryColor, // Set the background color directly
      titleSpacing: 0, // Adjust spacing between title and leading widget
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 50,
          ),
          const Text(
            'Mertcan Erbaşı',
            textAlign: TextAlign.center,
            style: AppTextStyles.w400_20,
          ),
          const Spacer(),
          AppTextButton(
            onPressed: () {
              context.read<MenuAppController>().scrollToSection(0);
            },
            text: 'Portfolio',
          ),
          const SizedBox(
            width: 50,
          ),
          AppTextButton(
            onPressed: () {
              context.read<MenuAppController>().scrollToSection(800);
            },
            text: 'About',
          ),
          const SizedBox(
            width: 50,
          ),
          AppTextButton(
            onPressed: () {
              context.read<MenuAppController>().scrollToSection(2500);
            },
            text: 'Work',
          ),
          const SizedBox(
            width: 50,
          ),
          const Spacer(),
          AppBorderedButton(
            onPressed: () {},
            text: 'Contact',
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor:
          Constants.primaryColor, // Set the background color directly
      titleSpacing: 0, // Adjust spacing between title and leading widget
      title: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            'Mertcan Erbaşı',
            textAlign: TextAlign.center,
            style: AppTextStyles.w400_20,
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
