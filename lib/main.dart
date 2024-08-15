import 'package:dalelapp/app/dalelapp.dart';
import 'package:dalelapp/core/cache/cache_helper.dart';
import 'package:dalelapp/core/functions/userChangesState.dart';
import 'package:dalelapp/core/services/server_Locator.dart';
import 'package:dalelapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  checkChangesState();
  setUpServiceLocator();
  await getIt.get<CacheHelper>().init();
  runApp(const Dalel());
}
