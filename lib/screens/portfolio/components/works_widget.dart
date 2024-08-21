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
          image: 'assets/images/gympol-mockup.png',
          title: 'GymPol',
          subtitle:
              'GymPol is a fitness app designed to simplify gym routines and track workouts, enhancing your bodybuilding experience efficiently.'),
      Slide(
          image: 'assets/images/gucumuzsensin.png',
          title: 'Gücümüz Sensin',
          subtitle:
              'Gücümüz Sensin is an employee management app that allows your employees to reach out HR related information and perform various operations.'),
      Slide(
          image: 'assets/images/miss.png',
          title: 'Miss',
          subtitle:
              'Miss is an in-store sales tracking app that enables employees to manage inventory and perform various retail operations efficiently.'),
      Slide(
          image: 'assets/images/ama.png',
          title: 'Akıllı Mağaza Asistanı',
          subtitle:
              'Akıllı Mağaza Asistanı is an employee management app that allows you to track employee performance and manage your workforce effectively.'),
      Slide(
          image: 'assets/images/katil.png',
          title: 'Katıl Mobil',
          subtitle:
              "Katıl Mobil is a social media app for creating and participating in surveys and polls, allowing you to earn money."),
      Slide(
          image: 'assets/images/ustabilir.png',
          title: 'Ustabilir',
          subtitle:
              "Ustabilir is a free, commission-free mobile platform that connects skilled craftsmen with those seeking their services and expertise."),
      Slide(
          image: 'assets/images/moreprojects.webp',
          title: '10+ More Projects',
          subtitle:
              'More projects are also created by request and for clients.'),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/proud_work.jpeg',
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
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
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
