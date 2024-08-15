import 'package:dalelapp/core/cache/cache_helper.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/core/services/server_Locator.dart';
import 'package:dalelapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setUpServiceLocator();
  await getIt.get<CacheHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.goRoute,
    );
  }
}
