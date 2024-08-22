import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavgation(context, AppRouter.kSignin);
            },
            icon: const Icon(Icons.logout),
          ),
        ),
        Center(
          child: Text("Home"),
        )
      ],
    );
  }
}
