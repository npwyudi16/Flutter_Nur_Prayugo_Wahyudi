import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_cupertino/widgets/daftarchat.dart';

class HomeCupertino extends StatelessWidget {
  const HomeCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'Contacts'),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                    label: 'Chats'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.settings_solid),
                    label: 'Settings'),
              ],
            ),
            tabBuilder: (BuildContext context, int index) {
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return const DaftarChat();
                },
              );
            }));
  }
}
