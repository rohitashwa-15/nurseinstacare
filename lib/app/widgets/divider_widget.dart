import 'package:flutter/material.dart';

import '../app.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      height: 1,
      color: ColorsValue.greyColor.withOpacity(0.5),
    );
  }
}
