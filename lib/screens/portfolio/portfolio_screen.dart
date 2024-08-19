import 'package:flutter/material.dart';
import 'package:mertcanerbasi/screens/portfolio/components/flutter_magic_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/solutions_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/welcome_widget.dart';
import 'package:mertcanerbasi/screens/portfolio/components/works_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            WelcomeWidget(),
            FlutterMagicWidget(),
            SolutionsWidget(),
            WorksWidget(),
            SizedBox(
              height: 1000,
            ),
          ],
        ),
      ),
    );
  }
}
