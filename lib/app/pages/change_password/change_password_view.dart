import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: StringConstants.changePassword,
        ),
        body: Padding(
          padding: Dimens.edgeInsets15_0_15_0,
          child: Column(
            key: const Key('change-password-view'),
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dimens.boxHeight10,
              Padding(
                padding: Dimens.getEdgeInsets(
                    Dimens.zero, Dimens.zero, Dimens.zero, Dimens.ten),
                child: Text(
                  StringConstants.oldPassword,
                  style: TextStyle(
                    fontSize: Dimens.fifteen,
                    color: ColorsValue.greyColor,
                  ),
                ),
              ),
              GetBuilder<ChangePasswordController>(
                builder: (controller) => FormFieldWidget(
                  obscureCharacter: '*',
                  isFilled: false,
                  formBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
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
              Padding(
                padding: Dimens.getEdgeInsets(
                    Dimens.zero, Dimens.zero, Dimens.zero, Dimens.ten),
                child: Text(
                  StringConstants.newPassword,
                  style: TextStyle(
                    fontSize: Dimens.fifteen,
                    color: ColorsValue.greyColor,
                  ),
                ),
              ),
              GetBuilder<ChangePasswordController>(
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
              Padding(
                padding:Dimens.getEdgeInsets(
                    Dimens.zero, Dimens.zero, Dimens.zero, Dimens.ten),
                child: Text(
                  StringConstants.confirmPassword,
                  style: TextStyle(
                    fontSize: Dimens.fifteen,
                    color: ColorsValue.greyColor,
                  ),
                ),
              ),
              GetBuilder<ChangePasswordController>(
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
              GetBuilder<ChangePasswordController>(
                builder: (controller) => ButtonWidget(
                  title: StringConstants.confirm,
                  onTap:  controller.enableButton() ? controller.submitChangePasswordDetails : null,
                ),
              ),
            ],
          ),
        ),
      );
}
