import 'package:elifgoktas/components/mobile_desktop_view_builder.dart';
import 'package:elifgoktas/navigation_bar/navigation_bar_view.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
        mobileView: DrawerDesktopView(),
        desktopView: SizedBox(),
    );
  }
}

class DrawerDesktopView extends StatelessWidget {
  const DrawerDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Elif Göktaş'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.pinkAccent],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          for (var item in kNavigationItems)
            ListTile(
              title: Text(item.text),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}