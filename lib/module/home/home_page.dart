import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/model/category/category.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';
import '../../model/movie/caster.dart';
import 'components/Slider.dart';
import 'components/buildTitle.dart';
import 'components/category_bar.dart';
import 'components/comingsoon.dart';
import 'components/header.dart';
import 'components/promo.dart';
import 'components/searchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            HomeHeader(size: size),
            // Search bar
            SearchBar(size: size),
            // Category bar
            CategoryBar(size: size),
            // Title for Now Playing
            buildTitle('Now Playing'),
            // Slider for movies
            SliderBar(size: size, movies: movies, ),
            // Title for Coming Soon
            buildTitle('Coming Soon'),
            // ComingSoon
            ComingSoon(size: size),
            // Promo section title
            buildTitle('Promo'),
            // Promo section content
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }
}

