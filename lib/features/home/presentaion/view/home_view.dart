import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_style.dart';
import 'package:flutter_application_2/features/home/widgets/Armchair_build.dart';
import 'package:flutter_application_2/features/home/widgets/bed_build.dart';
import 'package:flutter_application_2/features/home/widgets/chair_build.dart';
import 'package:flutter_application_2/features/home/widgets/popular_build.dart';
import 'package:flutter_application_2/features/home/widgets/table_build.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text(
                  'Make home',
                  style: getTitelstyle(color: AppColors.grey2color),
                ),
                Text(
                  'BEAUTIFUL',
                  style: getTitelstyle(
                    color: AppColors.blackcolor,
                  ),
                ),
              ],
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: AppColors.grey2color,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.grey2color,
                  ))
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.star), text: 'Popular'),
                Tab(icon: Icon(Icons.chair_alt), text: 'Chair'),
                Tab(icon: Icon(Icons.table_restaurant_rounded), text: 'Table'),
                Tab(icon: Icon(Icons.chair), text: 'Armchair'),
                Tab(icon: Icon(Icons.bed), text: 'Bed'),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(child: PopularBuild()),
            Center(child: ChairBuild()),
            Center(child: TableBuild()),
            Center(child: ArmchairBuild()),
            Center(child: BedBuild()),
          ]),
        ));
  }
}
