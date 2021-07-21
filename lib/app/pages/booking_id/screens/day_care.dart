import 'package:flutter/material.dart';

import '../../../app.dart';

class DayCare extends StatelessWidget {
  const DayCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Care Moment',
          style: Styles.grey10,
        ),
        Text(
          'Day Care',
          style: Styles.grey10,
        ),
        Text(
          '60 mins',
          style: Styles.grey10,
        ),
        Divider(
          thickness: Dimens.fifteen,
        ),
        Text(
          'Enter Report',
          style: Styles.blackBold10,
        ),
      ],
    );
  }
}
