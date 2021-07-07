import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/common/common.dart';
import 'package:flutter_whatsapp_ui/screens/whatsapp/whatsapp.dart';

class WhatsAppBody extends StatelessWidget {
  const WhatsAppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          WhatsAppAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                WhatsAppMyStatus(),
                WhatsAppUpdatesDivider(
                  updatesName: 'Recent updates',
                ),
                WhatsAppUpdates(
                  profileUrl: WhatsAppConstants.whatsAppFriendsUrl,
                  profileName: WhatsAppConstants.whatsAppFriendsName,
                  isRecent: true,
                ),
                SizedBox(
                  height: 12,
                ),
                WhatsAppUpdatesDivider(
                  updatesName: 'Viewed updates',
                ),
                WhatsAppUpdates(
                  profileUrl: WhatsAppConstants.whatsAppFriendViewedUrl,
                  profileName: WhatsAppConstants.whatsAppFriendsViewedName,
                  isRecent: false,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: WhatsAppFloatingActions(),
    );
  }
}
