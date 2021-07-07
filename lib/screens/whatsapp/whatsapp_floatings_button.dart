import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/common/config.dart';
import 'package:flutter_whatsapp_ui/styles/styles.dart';

class WhatsAppFloatingActions extends StatelessWidget {
  const WhatsAppFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 45,
          height: 45,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 5,
              onPressed: () => appTheme.switchTheme(),
              backgroundColor: Theme.of(context).buttonColor,
              child: Icon(
                Icons.edit,
                size: 35,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 60,
          height: 60,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 5,
              onPressed: () {},
              backgroundColor:
                  Theme.of(context).floatingActionButtonTheme.backgroundColor,
              child: Icon(
                Icons.camera_alt_rounded,
                size: 25,
                color: WhatsAppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
