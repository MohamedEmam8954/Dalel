import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiginInViewBody extends StatelessWidget {
  const SiginInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavgation(context, AppRouter.kSignUp);
            },
            icon: const Icon(Icons.logout),
          ),
        )
      ],
    );
  }
}
