import 'package:dalelapp/features/auth/presentation/widgets/forgetPasswordBody.dart';
import 'package:flutter/material.dart';

class ForgetpassView extends StatelessWidget {
  const ForgetpassView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ForgetPasswordBody(),
      ),
    );
  }
}
