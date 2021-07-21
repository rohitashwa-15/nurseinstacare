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
            const Text('TIMER'),
            const Text(
              '58:12',
              style: TextStyle(color: Colors.green, fontSize: 39),
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
                    child:Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border:
                          Border.all(width: Dimens.one, color: Colors.grey)), 
                  ),
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
