import 'package:flutter/material.dart';

class WhatsAppUpdatesDivider extends StatelessWidget {
  const WhatsAppUpdatesDivider({
    Key? key,
    required this.updatesName,
  }) : super(key: key);
  final String updatesName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      padding: EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '$updatesName',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
