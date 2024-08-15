import 'package:dalelapp/core/cache/cache_helper.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<Authcubit>(Authcubit());
}
