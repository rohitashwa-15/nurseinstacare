import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.edgeInsets5,
      child: Container(
        width: Dimens.sixty,
        height: Dimens.sixty,
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(Dimens.six),
            border: Border.all(color: Colors.blue),),
        child:GetBuilder<EnterVerificationController>(
                builder: (controller) =>TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: controller.checkIfVerificationIsValid,
              style:
                  TextStyle(fontSize: Dimens.thirty, fontWeight: FontWeight.w600),
              decoration: const InputDecoration(
                border: InputBorder.none,
              )),
        ),
      ),
    );
  }
}
