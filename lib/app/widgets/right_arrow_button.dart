import 'package:flutter/material.dart';
import '../app.dart';

class RightArrowButton extends StatelessWidget {
  const RightArrowButton({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {},
        child: Container(
          width: Dimens.percentWidth(1),
          height: Dimens.fifty,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(Dimens.eight),
          ),
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: Dimens.edgeInsets5,
                child: Container(
                  color: Colors.blue[700],
                  child: Center(
                    child: Padding(
                      padding: Dimens.edgeInsets10,
                      child: const Icon(
                        Icons.forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Dimens.boxWidth20,
              Dimens.boxWidth20,
              Dimens.boxWidth20,
              Dimens.boxWidth20,
              Dimens.boxWidth20,
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimens.eighteen,
                ),
              ),
            ]),
          ),
        ),
      );
}
