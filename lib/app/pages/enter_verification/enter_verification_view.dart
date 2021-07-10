import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nurseinstacare/app/widgets/box_widget.dart';

import '../../app.dart';

class EnterVerificationView extends StatelessWidget {
  const EnterVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: ' '),
        body: Padding(
          padding: Dimens.edgeInsets16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
             key: const Key('enter-verification-view'),
            children: [
              Text(
                StringConstants.enterVerificationCode,
                style: TextStyle(
                  color: ColorsValue.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimens.twentyFive,
                ),
              ),
              Dimens.boxHeight5,
              Text(
                StringConstants.verificationCodeSendto,
                style: TextStyle(
                  color: ColorsValue.greyColor.withOpacity(0.8),
                ),
              ),
              Dimens.boxHeight10,
              Row(
                children: [
                  const Text(
                    '8978289880990',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: Dimens.twenty,
                      height: Dimens.twenty,
                      child: Image.asset(
                        'assets/icon/edit_icon.png',
                      ))
                ],
              ),
              Dimens.boxHeight50,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BoxWidget(),
                  const BoxWidget(),
                  const BoxWidget(),
                  const BoxWidget(),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: Dimens.edgeInsets10,
                child: const Text(
                  '00:23',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),),
              ButtonWidget(
                title: StringConstants.verify,
                onTap: RouteManagement.goToEnterVerification,
              )
            ],
          ),
        ),
      );
}
