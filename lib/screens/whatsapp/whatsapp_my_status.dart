import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/common/constants.dart';
import 'package:flutter_whatsapp_ui/gen/assets.gen.dart';

class WhatsAppMyStatus extends StatelessWidget {
  const WhatsAppMyStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        contentPadding: EdgeInsets.only(bottom: 10, left: 20),
        onTap: () {},
        leading: Stack(clipBehavior: Clip.none, children: [
          ClipOval(
            child: Image.network(
              WhatsAppConstants.whatsAppProfileUrl[0],
            ),
          ),
          Positioned(
              top: 34,
              left: 40,
              child: Assets.icons.plus.image(
                width: 23,
                height: 23,
              ))
        ]),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            'Tap to add status update',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        title: Text(
          'My status',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
