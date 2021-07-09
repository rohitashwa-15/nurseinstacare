import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class Exp extends StatelessWidget {
  const Exp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dimens.edgeInsets15_10_15_10,
        child: Stack(
          children: [
            ListView(
              reverse: true,
              shrinkWrap: true,
              children: [
                 Dimens.boxHeight10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Dimens.boxHeight10,
                    GetBuilder<LoginController>(
                      builder: (controller) => FormFieldWidget(
                        isObscureText: false,
                        obscureCharacter: ' ',
                        contentPadding: Dimens.edgeInsets16,
                        fillColor: ColorsValue.lightGreyColor,
                        hintText: StringConstants.password,
                        hintStyle: Styles.grey16,
                        errorStyle: Styles.black12,
                        formBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              Dimens.ten,
                            ),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        errorText: '',
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.emailAddress,
                        formStyle: Styles.textColor,
                        onChange: controller.checkIfIdIsValid,
                      ),
                    ),
                  ],
                ),
              ].reversed.toList(),
            ),
          ],
        ),
      ),
    );
  }
}
