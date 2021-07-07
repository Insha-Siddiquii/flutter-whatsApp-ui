import 'package:flutter/material.dart';

class WhatsAppAppBar extends StatelessWidget {
  WhatsAppAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 15.0,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      leadingWidth: 0.0,
      title: Text(
        'WhatsApp',
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      actions: [
        IconButton(
          iconSize: 28,
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
        IconButton(
          iconSize: 28,
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
          ),
        )
      ],
      bottom: TabBar(
        isScrollable: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
        indicator: Theme.of(context).tabBarTheme.indicator,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 4.0,
        unselectedLabelColor:
            Theme.of(context).tabBarTheme.unselectedLabelColor,
        unselectedLabelStyle:
            Theme.of(context).tabBarTheme.unselectedLabelStyle,
        labelStyle: Theme.of(context).tabBarTheme.labelStyle,
        tabs: [
          Tab(
            icon: Icon(
              Icons.camera_alt,
              size: 22,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Tab(
              text: 'CHATS',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Tab(
              text: 'STATUS',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Tab(
              text: 'CALLS',
            ),
          ),
        ],
      ),
    );
  }
}
