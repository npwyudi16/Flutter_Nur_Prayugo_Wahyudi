import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Image Network'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: [
          InkWell(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        fit: BoxFit.cover)),
              ),
              onTap: () => Navigator.pushNamed(context, 'imageone')),
          InkWell(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      fit: BoxFit.cover)),
            ),
            onTap: () => Navigator.pushNamed(context, 'imagetwo'),
          ),
          InkWell(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://c1.wallpaperflare.com/preview/687/678/334/nature-animal-world-fawn-single.jpg'),
                      fit: BoxFit.cover)),
            ),
            onTap: () => Navigator.pushNamed(context, 'imagethree'),
          ),
          InkWell(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1594616389213-f3c7ce522896?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5pbWFsJTIwbG92ZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                        fit: BoxFit.cover)),
              ),
              onTap: () => Navigator.pushNamed(context, 'imagefour')),
        ],
      ),
    );
  }
}
