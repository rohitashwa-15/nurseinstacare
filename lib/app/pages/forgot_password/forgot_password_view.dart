import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';


/// A Forgot PAssword screen to attain password using email ID .
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorsValue.primaryColorRgb,
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(title: '',),
        body: Padding(
          padding: Dimens.edgeInsets15_10_15_10,
          child: ListView(
              key: const Key('forgot-password-view'),
              children: [
                Text(
                  StringConstants.forgotPassword,
                  style: TextStyle(
                    color: ColorsValue.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.twentyFive,
                  ),
                ),
                Dimens.boxHeight10,
                Text(
                  StringConstants.resetLink,
                  style: TextStyle(
                    color: ColorsValue.greyColor.withOpacity(0.8),
                  ),
                ),
                Dimens.boxHeight30,
                Text(
                  StringConstants.enterDetails,
                  style: TextStyle(
                    fontSize: Dimens.fifteen,
                    color: ColorsValue.greyColor,
                  ),
                ),
                Dimens.boxHeight10,
                GetBuilder<ForgotPasswordController>(
                  builder: (controller) => FormFieldWidget(
                    isObscureText: false,
                    obscureCharacter: ' ',
                    isFilled: true,
                    contentPadding: Dimens.edgeInsets16,
                    hintText: StringConstants.entermailId,
                    formBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    errorText: '',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                    onChange: controller.checkIfIdIsValid,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: Dimens.percentWidth(1),
                    height: Dimens.sixty,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(Dimens.eight),
                    ),
                    child: Center(
                      child: Text(
                        StringConstants.resetPassword,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.eighteen,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      );
}
