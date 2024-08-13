import 'package:dalelapp/core/cache/cache_helper.dart';
import 'package:dalelapp/core/services/server_Locator.dart';
import 'package:dalelapp/core/utils/appconstant.dart';

void onBoardingisVisited() {
  getIt
      .get<CacheHelper>()
      .saveData(key: Appconstant.onBoardingVisited, value: true);
}
