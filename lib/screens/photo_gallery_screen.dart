import 'package:flutter/material.dart';
import 'package:photo_gallery_app/provider/gallery_data.dart';
import 'package:provider/provider.dart';


class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {

  @override
  Widget build(BuildContext context) {

    // context.read<GalleryData>().getImages();

    return Scaffold(
      body: SafeArea(
                child: Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: context.watch<GalleryData>().photos.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                    ),
                    itemBuilder: (context, index) {
                      return Image.network(
                        
                        // Provider.of<GalleryData>(context, listen: true).photos[index]
                        
                        context.watch<GalleryData>().photos[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),

    );
  }
}
