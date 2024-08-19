import 'package:flutter/material.dart';
import 'package:mertcanerbasi/controllers/slide_controller.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';
import 'package:provider/provider.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<SlideController>(
      builder: (context, slideController, child) {
        return Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Container(
                key: ValueKey<int>(slideController.currentIndex),
                height: 800,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(slideController
                        .slides[slideController.currentIndex].image),
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.grey,
                      BlendMode.saturation,
                    ),
                  ),
                ),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 100.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          slideController
                              .slides[slideController.currentIndex].title,
                          style: !Responsive.isMobile(context)
                              ? AppTextStyles.w400_80
                              : AppTextStyles.w400_40,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          slideController
                              .slides[slideController.currentIndex].subtitle,
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
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        slideController
                            .decreaseIndex(slideController.currentIndex);
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Constants.accentColor,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        slideController
                            .increaseIndex(slideController.currentIndex);
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Constants.accentColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
