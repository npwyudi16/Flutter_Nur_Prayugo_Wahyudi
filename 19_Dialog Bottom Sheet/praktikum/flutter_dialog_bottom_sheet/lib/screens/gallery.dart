import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialog_bottom_sheet/models/image_data.dart';
import 'package:flutter_dialog_bottom_sheet/models/list_image.dart';
import 'package:flutter_dialog_bottom_sheet/screens/details_image.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gallery'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 23),
        itemCount: images.length,
        itemBuilder: (BuildContext context, index) {
          final ListImage image = images[index];
          return ListView(children: [
            Container(
              height: 130,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        image.image!,
                      ),
                      fit: BoxFit.cover)),
              child: InkWell(
                  onTap: () => showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(28))),
                        context: context,
                        builder: (context) => ListView(children: [
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 160,
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 270, vertical: 270),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          image.image!),
                                    )),
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    actionsAlignment: MainAxisAlignment.center,
                                    title: Container(
                                      height: 30,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                                image.image!),
                                          )),
                                    ),
                                    content: const Text(
                                      'Want to see Full Image?',
                                      textAlign: TextAlign.center,
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('NO')),
                                      TextButton(
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const FullImage(),
                                          ),
                                        ),
                                        child: const Text('YES'),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${images[index].name}',
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              '${images[index].des}',
                              style: const TextStyle(color: Colors.black),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ]),
                      )),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              '${images[index].name}',
              textAlign: TextAlign.center,
            )
          ]);
        },
      ),
    );
  }
}
