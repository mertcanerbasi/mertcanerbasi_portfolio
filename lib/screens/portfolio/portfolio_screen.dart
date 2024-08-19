import 'package:flutter/material.dart';
import 'package:mertcanerbasi/screens/portfolio/components/welcome_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          children: [
            const WelcomeWidget(),
            Container(
              height: 1000,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
