import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nurseinstacare/app/utils/strings/string_constants.dart';

import '../app.dart';

class Lw extends StatefulWidget {
  const Lw({Key? key, required this.itm}) : super(key: key);
  final int itm;
  @override
  State<Lw> createState() => _LwState();
}

class _LwState extends State<Lw> {
  bool _value = false;
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.percentWidth(1),
      height: Dimens.percentHeight(1),
      color: Colors.white,
      child: ListView.builder(
        key: const Key('list-widget'),
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.itm,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: Dimens.edgeInsets10_5_10_5,
                child: SizedBox(
                  width: Dimens.percentWidth(Dimens.one),
                  height: Dimens.fifty,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: Dimens.edgeInsets10_0_10_0,
                        child: Text(
                          StringConstants.amsterdam,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimens.eighteen),
                        ),
                      ),
                      Padding(
                        padding: Dimens.edgeInsets10,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _value = !_value;
                                if (color == Colors.white) {
                                  color = Colors.blue;
                                } else {
                                  color = Colors.white;
                                }
                              });
                            },
                            child: Container(
                              width: Dimens.thirty,
                              height: Dimens.thirty,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: ColorsValue.greyColor),
                                color: color,
                              ),
                              child: _value
                                  ? Icon(
                                      Icons.check,
                                      size: Dimens.twenty,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: Dimens.twenty,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: Dimens.one,
                indent: Dimens.ten,
                endIndent: Dimens.ten,
              )
            ],
          );
        },
      ),
    );
  }
}
