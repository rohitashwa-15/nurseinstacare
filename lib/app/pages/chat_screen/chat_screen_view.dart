import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/widgets/custom_navigation_bar.dart';

import '../../app.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => FeatureDiscovery(
      recordStepsInSharedPreferences: false,
    child: Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Dimens.hundred + Dimens.twenty),
            child: AppBar(
              centerTitle: true,
              flexibleSpace: Padding(
                padding: Dimens.edgeInsets15_0_15_0,
                child: Column(
                  children: [
                    Dimens.boxHeight30,
                    Padding(
                      padding: Dimens.edgeInsets10,
                      child: Text(
                        StringConstants.chats,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: Dimens.twenty,
                            color: ColorsValue.blackColor),
                      ),
                    ),
                    GetBuilder<ChatsController>(
                      builder: (controller) => SizedBox(
                        height: Dimens.seventy,
                        width: Dimens.percentWidth(1),
                        child: FormFieldWidget(
                          isObscureText: false,
                          obscureCharacter: ' ',
                          isFilled: true,
                          contentPadding: Dimens.getEdgeInsets(Dimens.fifteen, Dimens.five, Dimens.ten, Dimens.ten),
                          hintText: StringConstants.search,
                          formBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          errorText: '',
                          textInputAction: TextInputAction.go,
                          textInputType: TextInputType.text,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
              actions: [
                Padding(
                  padding: Dimens.edgeInsets10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.group_add_outlined,
                      color: ColorsValue.blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const ChatScreenWidget(),
          bottomNavigationBar: const CustomNavigationBar(),
        ),
  );
}
