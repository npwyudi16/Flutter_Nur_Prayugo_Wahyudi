import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialog_bottom_sheet/models/image_data.dart';
import 'package:flutter_dialog_bottom_sheet/models/list_image.dart';

class FullImage extends StatelessWidget {
  const FullImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(top: 160),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: 1,
        itemBuilder: (BuildContext context, index) {
          final ListImage image = images[index];
          return Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(image.image!),
                      fit: BoxFit.cover)),
            ),
          );
        });
  }
}
