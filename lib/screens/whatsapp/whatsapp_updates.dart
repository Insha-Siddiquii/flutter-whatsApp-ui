import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/styles/colors.dart';

class WhatsAppUpdates extends StatelessWidget {
  const WhatsAppUpdates({
    Key? key,
    required this.profileUrl,
    required this.profileName,
    required this.isRecent,
  }) : super(key: key);
  final List<String> profileUrl;
  final List<String> profileName;
  final bool isRecent;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: profileUrl.length,
      itemBuilder: (context, index) => Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            onTap: () {},
            leading: DottedBorder(
              borderType: BorderType.Circle,
              color: isRecent ? WhatsAppColors.lightGreen : Colors.grey,
              strokeWidth: 2,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: profileUrl[index],
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                    strokeWidth: 2,
                    color: WhatsAppColors.lightGreen,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'Today, 5:48 PM',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            title: Text(
              profileName[index],
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          if (index < profileUrl.length - 1)
            Divider(
              indent: 85,
              endIndent: 5,
              color: Colors.grey.shade600,
            )
        ],
      ),
    );
  }
}
