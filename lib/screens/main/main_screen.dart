import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/screens/main/components/side_menu.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/screens/portfolio/portfolio_screen.dart';
import 'package:mertcanerbasi/widgets/app_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      endDrawer: Responsive.isDesktop(context) ? null : const SideMenu(),
      appBar: Responsive.isDesktop(context)
          ? const DesktopAppBar()
          : const MobileAppBar(),
      body: const SafeArea(
        child: PortfolioScreen(),
      ),
    );
  }
}
