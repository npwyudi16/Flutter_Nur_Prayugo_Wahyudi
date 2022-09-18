import 'package:flutter/cupertino.dart';

class TabViewBuatan extends StatelessWidget {
  const TabViewBuatan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                children: const [
                  Text(
                    'All Chats',
                    style: TextStyle(
                        fontSize: 14, color: CupertinoColors.systemGrey),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Work',
                    style: TextStyle(
                        fontSize: 14, color: CupertinoColors.systemGrey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Unread',
                    style: TextStyle(
                        fontSize: 14, color: CupertinoColors.systemBlue),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 3,
                width: 80,
                decoration: const BoxDecoration(
                    color: CupertinoColors.systemBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              )
            ],
          ),
          Column(children: [
            Row(
              children: const [
                Text(
                  'Personal',
                  style: TextStyle(
                      fontSize: 14, color: CupertinoColors.systemGrey),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ])
        ],
      ),
    );
  }
}
