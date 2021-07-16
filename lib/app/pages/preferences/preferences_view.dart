import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app.dart';

/// A Preferences screen to choose preferences.
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
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            title: StringConstants.preferences,
          ),
          body: ListView(
            key:const Key('preferences-view'),
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
                padding: Dimens.edgeInsets18_10_18_10,
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
                    borderRadius: BorderRadius.all(Radius.circular(Dimens.six)),
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
                    ),
                    ),
                  ),
                ),
              ),
              const Lw(itm: 10),
              Container(
                color: Colors.white,
                child: Center(
                    child: Padding(
                  padding: Dimens.edgeInsets15,
                  child: ButtonWidget( title: StringConstants.save),
                )),
              ),
            ],
          ),
        ),
      );
}
