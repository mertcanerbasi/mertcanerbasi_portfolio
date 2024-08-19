import 'package:flutter/material.dart';
import 'package:mertcanerbasi/models/slide.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Slide> projects = [
      Slide(
          image: 'images/custom_solution.jpg',
          title: 'Project 1',
          subtitle: 'Description 1'),
      Slide(
          image: 'images/cross_platform.webp',
          title: 'Project 2',
          subtitle: 'Description 2'),
      Slide(
          image: 'images/uiuxdesign.jpg',
          title: 'Project 3',
          subtitle: 'Description 3'),
      Slide(
          image: 'images/cross_platform.webp',
          title: 'Project 4',
          subtitle: 'Description 4'),
      Slide(
          image: 'images/custom_solution.jpg',
          title: 'Project 5',
          subtitle: 'Description 5'),
      Slide(
          image: 'images/uiuxdesign.jpg',
          title: 'Project 6',
          subtitle: 'Description 6'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/proud_work.jpeg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
            ),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Constants.primaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I am proud of my works',
                    style: !Responsive.isMobile(context)
                        ? AppTextStyles.w400_80
                        : AppTextStyles.w400_40,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Here\'s some of my recent work',
                    style: !Responsive.isMobile(context)
                        ? AppTextStyles.w200_20
                        : AppTextStyles.w200_14,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Works',
                  style: AppTextStyles.w400_40
                      .copyWith(color: Constants.accentColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Explore my previous projects',
                  style: AppTextStyles.w400_20,
                ),
                const SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: projects.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(projects[index].image),
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
                                  projects[index].title,
                                  style: AppTextStyles.w800_20
                                      .copyWith(color: Constants.accentColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  projects[index].subtitle,
                                  style: AppTextStyles.w400_16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }
}
