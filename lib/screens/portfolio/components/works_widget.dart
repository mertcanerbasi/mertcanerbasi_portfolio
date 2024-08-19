import 'package:flutter/material.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/responsive.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
