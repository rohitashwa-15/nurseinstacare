import 'package:flutter/material.dart';

import '../../../app.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: Dimens.edgeInsets5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.boxHeight10,
            Padding(
              padding: Dimens.edgeInsets10,
              child: Text(
                'BASIC DETAILS',
                style: Styles.blackBold12,
              ),
            ),
            Padding(
              padding: Dimens.edgeInsets10,
              child: Table(
                defaultColumnWidth: FlexColumnWidth(
                  Dimens.one,
                ),
                children: [
                  TableRow(children: [
                    Text(
                      'Gender',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Female',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Name',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Sarah Mills',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'DOB',
                      style: Styles.grey16,
                    ),
                    Text(
                      '12 Jun 1960',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Age',
                      style: Styles.grey16,
                    ),
                    Text(
                      '61',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Origin-Language ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'English,Dutch',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Home address ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Im Rossweidli 33, 8045 Zürich, Switzerland',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Phone number ',
                      style: Styles.grey16,
                    ),
                    Text(
                      '+31 209 454 6643',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Email Address ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Sarah.mills@gmail.com',
                      style: Styles.black15,
                    ),
                  ]),
                ],
              ),
            ),
            Divider(
              thickness: Dimens.two,
            ),
            Padding(
              padding: Dimens.edgeInsets10,
              child: Text(
                'BASIC DETAILS',
                style: Styles.blackBold12,
              ),
            ),
            Padding(
              padding: Dimens.edgeInsets10,
              child: Table(
                defaultColumnWidth: FlexColumnWidth(
                  Dimens.one,
                ),
                children: [
                  TableRow(children: [
                    Text(
                      'Gender',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Female',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Name',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Sarah Mills',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'DOB',
                      style: Styles.grey16,
                    ),
                    Text(
                      '12 Jun 1960',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Age',
                      style: Styles.grey16,
                    ),
                    Text(
                      '61',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Origin-Language ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'English,Dutch',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Home address ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Im Rossweidli 33, 8045 Zürich, Switzerland',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Phone number ',
                      style: Styles.grey16,
                    ),
                    Text(
                      '+31 209 454 6643',
                      style: Styles.black15,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Email Address ',
                      style: Styles.grey16,
                    ),
                    Text(
                      'Sarah.mills@gmail.com',
                      style: Styles.black15,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      );
}
