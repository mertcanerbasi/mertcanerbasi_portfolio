import 'package:flutter/material.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/screens/portfolio/portfolio_screen.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';
import 'package:mertcanerbasi/widgets/app_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? AppBar(
              toolbarHeight: 80,
              flexibleSpace: Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Constants.primaryColor,
                ),
                child: Row(
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
                      onPressed: () {},
                      text: 'Portfolio',
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    AppTextButton(
                      onPressed: () {},
                      text: 'About',
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    AppTextButton(
                      onPressed: () {},
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
              ),
            )
          : null,
      body: const SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // It takes 5/6 part of the screen

              child: PortfolioScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
