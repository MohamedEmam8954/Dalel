import 'dart:developer';

import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/features/home/presentation/Manager/navgationBarcubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeNavagationBar extends StatefulWidget {
  const HomeNavagationBar({super.key});

  @override
  State<HomeNavagationBar> createState() => _HomeNavagationBarState();
}

class _HomeNavagationBarState extends State<HomeNavagationBar> {
  @override
  Widget build(BuildContext context) {
    var navCubit = BlocProvider.of<NavigationBarCubit>(context);
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: Container(
            width: double.infinity,
            height: 80,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: navCubit.icons.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: GestureDetector(
                    onTap: () {
                      log(index.toString());
                      navCubit.navToNextPage(index: index);
                    },
                    child: index == 1
                        ? Icon(
                            Icons.shopping_cart,
                            size: 26,
                            color: navCubit.currentindex == index
                                ? AppColors.deepBrown
                                : AppColors.lightBrown,
                          )
                        : SvgPicture.asset(
                            navCubit.icons[index],
                            fit: BoxFit.scaleDown,
                            color: navCubit.currentindex == index
                                ? AppColors.deepBrown
                                : AppColors.lightBrown,
                            height: 40,
                            width: 80,
                          ),
                  ),
                );
              },
            ),
          ),
          body: navCubit.views[navCubit.currentindex],
        );
      },
    );
  }
}
