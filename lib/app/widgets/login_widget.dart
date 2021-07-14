import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
    => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
                StringConstants.enterDetails,
                style: TextStyle(
                  fontSize: Dimens.fifteen,
                  color: ColorsValue.greyColor,
                ),
              ),
              GetBuilder<LoginController>(
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
              GetBuilder<LoginController>(
                builder: (controller) => FormFieldWidget(
                  obscureCharacter: '*',
                  isFilled: false,
                  formBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  contentPadding: Dimens.edgeInsets16,
                  hintText: StringConstants.password,
                  isObscureText: controller.isPasswordVisible ? false : true,
                  errorText: '',
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  onChange: controller.checkIfPasswordIsValid,
                  suffixIcon: IconButton(
                    onPressed: controller.updatePasswordVisibility,
                    icon: controller.isPasswordVisible
                        ? const Icon(
                            Icons.visibility,
                            color: ColorsValue.greyColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: ColorsValue.greyColor,
                          ),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: RouteManagement.goToForgotPasswprd,
                  child: Text(
                    StringConstants.forgotPassword,
                    style: TextStyle(
                      fontSize: Dimens.fifteen,
                      color: ColorsValue.greyColor,
                    ),
                  ),
                ),
              ),
              GetBuilder<LoginController>(
                builder: (controller) => GestureDetector(
                  onTap: () {},
                  //controller.enableButton() ? controller.submitLogin : null,
                  child: Container(
                    width: Dimens.percentWidth(1),
                    height: Dimens.fifty,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(Dimens.eight),
                    ),
                    child: Center(
                      child: Text(
                        StringConstants.login,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.eighteen,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Dimens.boxHeight10,
              Row(
                children: [
                  Container(
                    height: Dimens.one,
                    width: Dimens.percentWidth(0.3),
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: Dimens.edgeInsets10_0_10_0,
                    child: Text(StringConstants.orContinueWith),
                  ),
                  Container(
                    height: Dimens.one,
                    width: Dimens.percentWidth(0.3),
                    color: Colors.grey,
                  ),
                ],
              ),
              Dimens.boxHeight30,
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      width: Dimens.percentWidth(0.42),
                      height: Dimens.fifty,
                      child: Padding(
                        padding: Dimens.edgeInsets10,
                        child: Image.asset('assets/googleLogo.png'),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.six),
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ),
                  Dimens.boxWidth20,
                  Dimens.boxWidth10,
                  GestureDetector(
                    child: Container(
                      width: Dimens.percentWidth(0.42),
                      height: Dimens.fifty,
                      child: Center(
                        child: Text(
                          StringConstants.phone,
                          style: TextStyle(
                            fontSize: Dimens.eighteen,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.six),
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ),
      ],
    )
      ]
    );
}