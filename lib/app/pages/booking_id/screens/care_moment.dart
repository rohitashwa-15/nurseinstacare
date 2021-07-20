import 'package:flutter/material.dart';

import '../../../app.dart';

class CareMoment extends StatelessWidget {
  const CareMoment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.edgeInsets10,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.boxHeight10,
            Text(
              'CARE PLAN',
              style: Styles.blackBold12,
            ),
            Dimens.boxHeight20,
            Container(
              width: Dimens.hundred,
              height: Dimens.thirty,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue)),
              child: Center(
                child: Text(
                  'ZES',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: Dimens.thirteen),
                ),
              ),
            ),
            Dimens.boxHeight10,
            Divider(
              thickness: Dimens.five,
            ),
            Dimens.boxHeight10,
            Padding(
              padding: Dimens.edgeInsets10,
              child: Text(
                'ACTIONS TO DO',
                style: Styles.blackBold12,
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: Dimens.one, color: Colors.grey)),
                  child: Padding(
                    padding: Dimens.edgeInsets10,
                  ),
                ),
                Padding(
                  padding: Dimens.edgeInsets5_0_5_0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Day Care ',
                        style: Styles.blackBold10,
                      ),
                      Text(
                        '60 mins',
                        style: Styles.grey10,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: Dimens.edgeInsets10_0_10_0,
              child: Container(
                width: Dimens.one,
                height: Dimens.fifty,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: Dimens.one, color: Colors.grey)),
                  child: Padding(
                    padding: Dimens.edgeInsets10,
                  ),
                ),
                Padding(
                  padding: Dimens.edgeInsets5_0_5_0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Washing ',
                        style: Styles.blackBold10,
                      ),
                      Text(
                        '10 mins',
                        style: Styles.grey10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
    );
  }
}
