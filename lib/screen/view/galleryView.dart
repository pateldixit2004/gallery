import 'package:flutter/material.dart';
import 'package:gallery/screen/provider/galleryProvidder.dart';
import 'package:gallery/screen/view/photoscreen.dart';
import 'package:gallery/screen/view/scree2.dart';
import 'package:provider/provider.dart';

class Gallery_Screen extends StatefulWidget {
  const Gallery_Screen({Key? key}) : super(key: key);

  @override
  State<Gallery_Screen> createState() => _Gallery_ScreenState();
}

class _Gallery_ScreenState extends State<Gallery_Screen> {

  galleryProvider? providerF;
  galleryProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<galleryProvider>(context,listen: false);
    providerT=Provider.of<galleryProvider>(context,listen: true);
    List<Widget> screenList=[PhotoScreen(),Screen(),PhotoScreen(),];
    return SafeArea(
      child: Scaffold(
        body:screenList[providerT!.seclectindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            providerF!.changeIndex(value);
          },
          currentIndex: providerT!.seclectindex,
          items: [
           BottomNavigationBarItem(icon: Icon(Icons.photo),label: "Photos"),
           BottomNavigationBarItem(icon: Icon(Icons.album),label: "Albums"),
           BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Serch"),
          ],
        ),
      ),
    );
  }
}
