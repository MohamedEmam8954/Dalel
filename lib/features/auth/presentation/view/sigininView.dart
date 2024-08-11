import 'package:dalelapp/features/auth/presentation/widgets/SigninViewBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiginInView extends StatelessWidget {
  const SiginInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SiginInViewBody(),
      ),
    );
  }
}
