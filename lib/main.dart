import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gallery/screen/provider/galleryProvidder.dart';
import 'package:gallery/screen/view/galleryView.dart';
import 'package:gallery/screen/view/photoscreen.dart';
import 'package:gallery/screen/view/scree2.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => galleryProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Gallery_Screen(),
          'photo':(context)=>PhotoScreen(),
          'ss':(context)=>Screen(),
        },
      ),
    )
  );
}