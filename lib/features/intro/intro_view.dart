import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/routing/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_style.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presentation/view/login_view.dart';
import 'package:gap/gap.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/intro.png',
              width: 400,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 180,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MAKE YOUR',
                    style: getTitelstyle(
                        color: AppColors.grey2color, fontSize: 24),
                  ),
                  const Gap(5),
                  Text(
                    'HOME BEAUTIFUL',
                    style: getTitelstyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackcolor),
                  ),
                  const Gap(50),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      top: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The best simple place where you ',
                          style: getTitelstyle(
                              fontSize: 18,
                              color: AppColors.grey2color,
                              fontWeight: FontWeight.normal),
                        ),
                        const Gap(10),
                        Text(
                          'discover most wonderful furnitures',
                          style: getTitelstyle(
                              color: AppColors.grey2color,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                        const Gap(10),
                        Text(
                          'and make your home beautiful',
                          style: getTitelstyle(
                              color: AppColors.grey2color,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                        const Gap(150),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: CustomButton(
                            text: 'Get Started',
                            onPressed: () {
                              push(context, const LoginView());
                            },
                            background: AppColors.blackcolor,
                            height: 60,
                            width: 190,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
