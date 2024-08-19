import 'package:flutter/material.dart';
import 'package:mertcanerbasi/models/slide.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class SolutionsWidget extends StatelessWidget {
  const SolutionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Slide> solutions = [
      Slide(
        title: 'Cross Platform Development',
        subtitle:
            'Create stunning apps that work seamlessly on multiple platforms.',
        image: 'images/cross_platform.webp',
      ),
      Slide(
        title: 'Custom app solutions',
        subtitle:
            'Tailored applications to meet your unique business needs and goals.',
        image: 'images/custom_solution.jpg',
      ),
      Slide(
        title: 'UI/UX design',
        subtitle:
            'Engage users with intuitive and appealing design and layouts.',
        image: 'images/uiuxdesign.jpg',
      ),
    ];
    if (Responsive.isDesktop(context)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Innovative Solutions',
                    style: AppTextStyles.w400_40
                        .copyWith(color: Constants.accentColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Crafting apps with precision and perfect UI/UX design and implementation',
                    style: AppTextStyles.w800_20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Transform your ideas into stunning mobile applications. You can rely on me for your Ideas to be transformed into reality with the best possible solutions and technologies.',
                    style: AppTextStyles.w400_20,
                  ),
                  const Text(
                    'Not only mobile applications, but also I can help you with web development and backend solutions to make your project a success.',
                    style: AppTextStyles.w400_20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 400,
              child: Row(
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(solutions[index].image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Constants.primaryColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  solutions[index].title,
                                  style: AppTextStyles.w400_20
                                      .copyWith(color: Constants.accentColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  solutions[index].subtitle,
                                  style: AppTextStyles.w800_16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Innovative Solutions',
                    style: AppTextStyles.w400_20
                        .copyWith(color: Constants.accentColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Crafting apps with precision and perfect UI/UX design and implementation',
                    style: AppTextStyles.w800_16,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Transform your ideas into stunning mobile applications. You can rely on me for your Ideas to be transformed into reality with the best possible solutions and technologies.',
                    style: AppTextStyles.w400_14,
                  ),
                  const Text(
                    'Not only mobile applications, but also I can help you with web development and backend solutions to make your project a success.',
                    style: AppTextStyles.w400_14,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            IntrinsicHeight(
              child: Column(
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      height: 400,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(solutions[index].image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Constants.primaryColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  solutions[index].title,
                                  style: AppTextStyles.w400_20
                                      .copyWith(color: Constants.accentColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  solutions[index].subtitle,
                                  style: AppTextStyles.w800_16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      );
    }
  }
}
