import 'package:flutter/material.dart';

class GridViu extends StatelessWidget {
  const GridViu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        crossAxisCount: 4,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.access_alarm_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.access_time_filled_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.ac_unit_rounded,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.accessibility_new_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.account_balance_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.ad_units_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_a_photo_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.account_tree_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_box_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_business_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_card_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_chart_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.add_comment_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.zoom_out_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.zoom_in_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.youtube_searched_for_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.yard_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.wysiwyg_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.wrong_location_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.wrap_text_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.workspaces_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.workspace_premium_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.work_outline_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.work_history_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.woo_commerce_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.woman_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.wine_bar_rounded),
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 118, 179, 230)),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.window_rounded),
          ),
        ],
      ),
    );
  }
}
