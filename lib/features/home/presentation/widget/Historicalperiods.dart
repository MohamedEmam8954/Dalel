import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/firebaseStrings.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:dalelapp/features/home/data/models/HistoricalPeroidmodel.dart';
import 'package:dalelapp/features/home/presentation/Manager/HistoricalPeriodscubit/cubit/historical_peroids_cubit.dart';
import 'package:dalelapp/features/home/presentation/widget/HistoricalperiodItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class Historicalperiods extends StatelessWidget {
  const Historicalperiods({super.key});

  @override
  Widget build(BuildContext context) {
    var firebaseFirestore =
        FirebaseFirestore.instance.collection(FirebaseStrings.firebaseproduct);

    return BlocConsumer<HistoricalPeroidsCubit, HistoricalPeroidsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HistoricalPeroidsSucess) {
          return SizedBox(
            height: 96,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  context.read<HistoricalPeroidsCubit>().historical.length,
              itemBuilder: (context, index) {
                return HistoricalperiodItem(
                  historicalPeroidModel:
                      context.read<HistoricalPeroidsCubit>().historical[index],
                );
              },
            ),
          );
        } else if (state is HistoricalPeroidsLoading) {
          return SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: AppColors.grey,
              highlightColor: Colors.white,
              child: Container(
                width: 164,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.grey,
                      blurRadius: 10,
                      spreadRadius: 0.5,
                      offset: Offset(0, 2.5),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 63,
                        height: 48,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (state is HistoricalPeroidsFailure) {
          return Text(state.errorMessage);
        } else {
          return const Text("there is an error");
        }
      },
    );
  }
}
