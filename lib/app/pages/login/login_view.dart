import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';
import 'package:nurseinstacare/app/theme/dimens.dart';
import 'package:nurseinstacare/app/theme/theme.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});
  @override
  Key get key => const Key('login-view');
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: Dimens.edgeInsets15_10_15_10,
          child: ListView(shrinkWrap: true, children: [
            Dimens.boxHeight70,
            //Dimens.boxHeight70,
            Center(
              child: SizedBox(
              width: Dimens.hundred,
              height: Dimens.hundred,,
              child: Image.asset('assets/instaCareLogo.svg')),
            ),
            Dimens.boxHeight30,
            const LoginWidget(),
          ]),
        ),
      );
}
