import 'package:dalelapp/features/home/presentation/widget/homeView_section/HistoricalCharacterSection.dart';
import 'package:dalelapp/features/home/presentation/widget/homeView_section/HistoricalPeriodsSection.dart';
import 'package:dalelapp/features/home/presentation/widget/homeView_section/HistoricalSouvenirsSection.dart';
import 'package:dalelapp/features/home/presentation/widget/homeView_section/HomeAppBarSection.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          //!appbar
          SliverToBoxAdapter(
            child: HomeAppBarSection(),
          ),
          //!Historical periods
          SliverToBoxAdapter(
            child: HistoricalPeriodsSection(),
          ),
          //! Historical character
          SliverToBoxAdapter(
            child: HistoricalCharacterSection(),
          ),
          //!Historical Souvenirs
          SliverToBoxAdapter(
            child: HistoricalSouvenirsSection(),
          )
        ],
      ),
    );
  }
}
