import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/custom_widget/steno_key.dart';
import 'package:flutter/cupertino.dart';

class StenoKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: screenWidth(context),
      padding: gamePadding,
      child: Column(
        children: [
          StenoKey(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StenoKey(
                height: 80,
                width: keyWidth(context),
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              StenoKey(
                height: 80,
                width: keyWidth(context),
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
              Column(
                children: [
                  StenoKey(
                    width: keyWidth(context),
                  ),
                  StenoKey(
                    width: keyWidth(context),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              keyVerticalSpace(halfScreenWidth(context) -
                  ((keyWidth(context) / 2 + 12)) -
                  keyWidth(context) * 2 -
                  25 / 2),
              StenoKey(
                width: keyWidth(context),
              ),
              StenoKey(
                width: keyWidth(context),
              ),
              horizontalSpaceMedium,
              StenoKey(
                width: keyWidth(context),
              ),
              StenoKey(
                width: keyWidth(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
