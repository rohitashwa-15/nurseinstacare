import 'package:flutter/material.dart';

import '../app.dart';

class ChatScreenWidget extends StatelessWidget {
  const ChatScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => Card(
            child: ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                maxRadius: Dimens.twenty + Dimens.five,
                minRadius: Dimens.six * Dimens.two,
              ),
              title: Text('Username', style: Styles.black15),
              subtitle: Text(
                'Hi Clara, Lorem ipsum dolor sit amet \nadipiscing elit.',
                style: Styles.grey10,
                maxLines: 3,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Dimens.boxHeight15,
                  Text(
                    '1 Min',
                    style: Styles.grey10,
                  )
                ],
              ),
              onTap: () {},
            ),
          ),
        ),
      );
}
