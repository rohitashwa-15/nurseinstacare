import 'package:flutter/material.dart';
import 'package:nurseinstacare/app/app.dart';
import 'package:nurseinstacare/app/utils/strings/icon_constants.dart';
import 'package:nurseinstacare/app/widgets/start_job_button.dart';

class PastReport extends StatelessWidget {
  const PastReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dimens.boxHeight10,
        Padding(
          padding: Dimens.edgeInsets10_0_10_0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstants.pastReports,
                style: Styles.black15,
              ),
              Row(
                children: [
                  Image.asset(IconConstants.backIcon),
                  const Text('06 May - 12 May 2021'),
                  Image.asset(IconConstants.backIcon),
                ],
              ),
            ],
          ),
        ),
        Dimens.boxHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets10,
                child: Text('6'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets10,
                child: Text('7'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets10,
                child: Text('8'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets10,
                child: Text('9'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets5,
                child: Text(
                  '10',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets5,
                child: Text('11'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: Dimens.one)),
              child: Padding(
                padding: Dimens.edgeInsets5,
                child: Text('12'),
              ),
            ),
          ],
        ),
        Dimens.boxHeight10,
        const Divider(
          thickness: 10,
        ),
        Dimens.boxHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: Dimens.edgeInsets10,
              child: Image.asset(IconConstants.userIcon),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dona Aziz',
                  style: Styles.blackBold10,
                ),
                Text(
                  '10:45',
                  style: Styles.grey10,
                ),
                Dimens.boxHeight10,
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipis  elit,\nsed do eiusmodtempordidunt ut. Ut enim ad minim veniam.'),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                  ],
                )
              ],
            )
          ],
        ),
        Divider(
          thickness: Dimens.two,
        ),
      ],
    );

  }
}
