import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/theme/theme.dart';
import 'package:nurseinstacare/app/widgets/blue_dot_widget.dart';
import 'package:nurseinstacare/app/widgets/list_tiles.dart';
import '../../app.dart';

class PreferencesView extends StatefulWidget {
  const PreferencesView({Key? key}) : super(key: key);

  @override
  State<PreferencesView> createState() => _PreferencesViewState();
}

class _PreferencesViewState extends State<PreferencesView> {
  late Color color;

  @override
  Widget build(BuildContext context) => GetBuilder<PreferencesController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Dimens.eighty),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  Dimens.boxHeight40,
                  Text(
                    StringConstants.preferences,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsValue.blackColor),
                  ),
                ],
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
            ),
          ),
          body: ListView(
            children: [
              Container(
                color: ColorsValue.primaryColorRgb,
                width: Dimens.percentWidth(1),
                height: Dimens.hundred + Dimens.ten,
                child: Padding(
                  padding: Dimens.edgeInsets10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: Dimens.edgeInsets10,
                        child: Text(
                          StringConstants.howWouldOperate,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: ColorsValue.greyColor.withOpacity(0.6),
                              fontSize: Dimens.fourteen),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const BlueDotWidget(),
                          Text(
                            StringConstants.preferredZones,
                            style: TextStyle(
                              fontSize: Dimens.eighteen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const BlueDotWidget(),
                          Text(
                            StringConstants.radius,
                            style: TextStyle(
                              fontSize: Dimens.eighteen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: Dimens.eight,
                height: Dimens.eight,
              ),
              Padding(
                padding: Dimens.edgeInsets20,
                child: Text(
                  StringConstants.selectPreferredZones,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorsValue.greyColor.withOpacity(0.6),
                    fontSize: Dimens.fifteen,
                  ),
                ),
              ),
              Padding(
                padding: Dimens.edgeInsets18_10_18_10,
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
                    padding: Dimens.edgeInsets18_0_18_0,
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: StringConstants.search,
                    )),
                  ),
                ),
              ),
              const Lw(itm: 6),
            ],
          ),
        ),
      );
}
