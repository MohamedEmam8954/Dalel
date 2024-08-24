import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalelapp/core/utils/firebaseStrings.dart';
import 'package:dalelapp/features/home/data/models/HistoricalPeroidmodel.dart';
import 'package:meta/meta.dart';

part 'historical_peroids_state.dart';

class HistoricalPeroidsCubit extends Cubit<HistoricalPeroidsState> {
  HistoricalPeroidsCubit() : super(HistoricalPeroidsInitial());
  List<HistoricalPeroidModel> historical = [];
  historicalPeroid() async {
    try {
      emit(HistoricalPeroidsLoading());
      await FirebaseFirestore.instance
          .collection(FirebaseStrings.firebaseproduct)
          .get()
          .then((value) {
        for (var element in value.docs) {
          historical.add(HistoricalPeroidModel.fromjson(element));
        }
      });
      emit(HistoricalPeroidsSucess());
    } on FirebaseException catch (e) {
      emit(HistoricalPeroidsFailure(errorMessage: e.code));
    }
  }
}
