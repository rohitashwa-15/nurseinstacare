import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../app.dart';

/// A Edit Phone Screen to feed in phone number.
class EditPhoneNoView extends StatelessWidget {
  EditPhoneNoView({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController txtcontroller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: CustomAppBar(title: StringConstants.editPhoneNo),
      body: Padding(
        padding: Dimens.edgeInsets15_10_15_10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          key: const Key('edit-phone-no-view'),
          children: [
            Padding(
              padding: Dimens.edgeInsets5,
              child: Text(
                StringConstants.phoneNo,
                style: TextStyle(
                  fontSize: Dimens.twelve,
                  color: ColorsValue.greyColor,
                ),
              ),
            ),
            Padding(
              padding: Dimens.edgeInsets10,
              child: GetBuilder<EditPhoneNoController>(
                builder: (controller) => InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    controller.checkIfPhNoIsValid;
                  },
                  onInputValidated: (bool value) {
                    
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: txtcontroller,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: const OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {},
                ),
              ),
            ),
            Expanded(child: Dimens.boxHeight10),
            const Divider(
              thickness: 1,
            ),
           GetBuilder<EditPhoneNoController>(
                builder: (controller) => ButtonWidget(
                title: StringConstants.verify,
                onTap: controller.enableButton() ? controller.submitPhNoDetails : null,
              ),
            )
          ],
        ),
      ));
}
