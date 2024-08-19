import 'package:flutter/material.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isDesktop(context)) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Mertcan Erbaşı',
                style: AppTextStyles.w800_20,
              ),
              const Text(
                'Flutter | iOS Developer',
                style: AppTextStyles.w200_16,
              ),
              const SizedBox(
                height: 20,
              ),
              //GitHub, LinkedIn, Twitter, Instagram
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'images/github.png',
                  width: 30,
                  height: 30,
                  color: Colors.white,
                ),
                title: const Text("https://github.com/mertcanerbasi",
                    style: AppTextStyles.w200_16),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'images/linkedin.webp',
                  width: 30,
                  height: 30,
                ),
                title: const Text("www.linkedin.com/in/mertcanerbasi",
                    style: AppTextStyles.w200_16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '© 2021 Mertcan Erbaşı. All rights reserved.',
                style: AppTextStyles.w200_16,
              ),
            ]),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mertcan Erbaşı',
                    style: AppTextStyles.w800_20,
                  ),
                  Text(
                    'Flutter | iOS Developer',
                    style: AppTextStyles.w200_16,
                  ),
                ],
              ),
            ),

            const Expanded(
              child: Text(
                '© 2021 Mertcan Erbaşı. All rights reserved.',
                style: AppTextStyles.w200_16,
              ),
            ),

            //GitHub, LinkedIn, Twitter, Instagram
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/github.png',
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("https://github.com/mertcanerbasi",
                          style: AppTextStyles.w200_16),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/linkedin.webp',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("www.linkedin.com/in/mertcanerbasi",
                          style: AppTextStyles.w200_16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
