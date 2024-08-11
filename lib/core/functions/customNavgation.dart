import 'package:go_router/go_router.dart';

void customNavgation(context, String path) {
  GoRouter.of(context).push(path);
}

void customReplacementNavgation(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
