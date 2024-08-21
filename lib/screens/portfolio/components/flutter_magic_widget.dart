import 'package:flutter/material.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class FlutterMagicWidget extends StatelessWidget {
  const FlutterMagicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) {
      return SizedBox(
        height: 800,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/flutter_magic.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crafting Flutter | iOS Magic",
                      style: AppTextStyles.w400_40
                          .copyWith(color: Constants.accentColor),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Transforming ideas into apps",
                      style: AppTextStyles.w800_20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "With 5 years of hands-on experience in Flutter, I craft robust, scalable mobile applications using state-of-the-art technologies like BLoC, Provider and cloud solutions such as Firebase and Supabase besides of backend integrations with REST APIs and GraphQL.",
                      style: AppTextStyles.w400_20,
                    ),
                    const Text(
                      "Also I have a strong background in iOS development with Swift and UIKit, SwiftUI.",
                      style: AppTextStyles.w400_20,
                    ),
                    const Text(
                      "Furthermore, I have experience in Node.js and Express.js for backend development.",
                      style: AppTextStyles.w400_20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/flutter_magic.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crafting Flutter | iOS Magic",
                      style: AppTextStyles.w400_20
                          .copyWith(color: Constants.accentColor),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Transforming ideas into apps",
                      style: AppTextStyles.w800_16,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "With 5 years of hands-on experience in Flutter, I craft robust, scalable mobile applications using state-of-the-art technologies like BLoC, Provider and cloud solutions such as Firebase and Supabase besides of backend integrations with REST APIs and GraphQL.",
                      style: AppTextStyles.w400_14,
                    ),
                    const Text(
                      "Also I have a strong background in iOS development with Swift and UIKit, SwiftUI.",
                      style: AppTextStyles.w400_14,
                    ),
                    const Text(
                      "Furthermore, I have experience in Node.js and Express.js for backend development.",
                      style: AppTextStyles.w400_14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
