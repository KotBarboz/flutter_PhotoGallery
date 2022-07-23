import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_app/bloc/gallery_cubit.dart';
import 'package:photo_gallery_app/screens/photo_gallery_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GalleryCubit>(
      create: (BuildContext context) => GalleryCubit()..getPhotos(),
      child: MaterialApp(

        theme: ThemeData.dark(),
        home: const PhotoGallery(),
      ),
    );
  }
}

