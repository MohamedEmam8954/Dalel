import 'package:dalelapp/core/utils/firebaseStrings.dart';

class HistoricalPeroidModel {
  final String acientImage,
      islamicImage,
      history,
      aboutHistory,
      acient,
      islamic;

  HistoricalPeroidModel(
      {required this.acientImage,
      required this.islamicImage,
      required this.history,
      required this.aboutHistory,
      required this.acient,
      required this.islamic});
  factory HistoricalPeroidModel.fromjson(json) {
    return HistoricalPeroidModel(
      acientImage: json[FirebaseStrings.firebaseacientimage],
      islamicImage: json[FirebaseStrings.firebaseislamicimage],
      history: json[FirebaseStrings.firebasehistory],
      aboutHistory: json[FirebaseStrings.firebaseaboutEgyptimg],
      acient: json[FirebaseStrings.firebaseacient],
      islamic: json[FirebaseStrings.firebaseIslamic],
    );
  }
}
