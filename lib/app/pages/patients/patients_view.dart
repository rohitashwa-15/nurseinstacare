import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/widgets/list_tiles.dart';

import '../../app.dart';

class PatientsView extends StatelessWidget {
  const PatientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<PatientsController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Dimens.eighty),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Dimens.boxHeight30,
                  Text(
                    StringConstants.patientTypes,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsValue.blackColor),
                  ),
                ],
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
            ),
          ),
          body: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: Dimens.edgeInsets15,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: ColorsValue.greyColor,
                        ),
                        color: Colors.white,
                      ),
                      width: Dimens.percentWidth(Dimens.one),
                      height: Dimens.fourty,
                      child: Padding(
                        padding: Dimens.edgeInsets5_0_5_0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: StringConstants.search,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Lw(itm: 8),
                ],
              ),
            ),
          ),
        ),
      );
}
