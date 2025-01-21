import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_style.dart';
import 'package:gap/gap.dart';

class ArmchairBuild extends StatelessWidget {
  const ArmchairBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Items per row
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                            height: 150,
                            width: 110,
                            child: Image.asset(
                              'assets/Armchair.jpg',
                              fit: BoxFit.cover,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag_sharp,
                              color: AppColors.blackcolor,
                            ))
                      ],
                    ),
                  ),
                  const Gap(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Black Simple Armchair',
                        style: getTitelstyle(
                            color: AppColors.greycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      const Gap(5),
                      Text(
                        '25.00 \$',
                        style: getTitelstyle(
                            color: AppColors.blackcolor, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
