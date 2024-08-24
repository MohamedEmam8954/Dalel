import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/features/cart/presentation/views/cartview.dart';
import 'package:dalelapp/features/home/presentation/Manager/HistoricalPeriodscubit/cubit/historical_peroids_cubit.dart';
import 'package:dalelapp/features/home/presentation/view/homeview.dart';
import 'package:dalelapp/features/profile/presentation/views/profileview.dart';
import 'package:dalelapp/features/search/presentation/views/searchview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarInitial());
  int currentindex = 0;
  List<String> icons = [
    Assets.imagesHome,
    Assets.imagesShopingCart,
    Assets.imagesSearch,
    Assets.imagesUser,
  ];

  List<Widget> views = [
    BlocProvider(
      create: (context) => HistoricalPeroidsCubit()..historicalPeroid(),
      child: const HomeView(),
    ),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];

  navToNextPage({required int index}) {
    log(index.toString());
    currentindex = index;
    emit(NavigationBarNavSucess());
  }
}
