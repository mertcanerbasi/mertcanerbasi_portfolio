import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/screens/portfolio/components/flutter_magic_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/footer_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/solutions_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/welcome_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/works_widget.dart';
import 'package:provider/provider.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: context.read<MenuAppController>().scrollController,
        primary: false,
        child: const Column(
          children: [
            WelcomeWidget(),
            FlutterMagicWidget(),
            SolutionsWidget(),
            WorksWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
