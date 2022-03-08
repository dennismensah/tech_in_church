import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/gallery/widgets/gallery_view.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GalleryBloc>()..add(const GalleryEvent.galleryFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Gallery',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: const GalleryView(),
        ),
      ),
    );
  }
}
