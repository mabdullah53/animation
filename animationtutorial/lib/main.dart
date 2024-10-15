import 'package:animationtutorial/all_animations/animated_movie_app/animated_movie_model/animated_moviee_model.dart';
import 'package:animationtutorial/all_animations/newmoephism_button.dart';
import 'package:animationtutorial/ripple_effectt/ripplee_effect_animationn.dart';
import 'package:animationtutorial/transitions/scalee_transition/scalee_transition.dart';
import 'package:animationtutorial/tween_animationn/tween_animatioon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'all_animations/aniimated_list/aniimated_list.dart';
import 'all_animations/animated_background.dart';
import 'all_animations/animated_movie_app/screeen/detail_screeen.dart';
import 'all_animations/animated_movie_app/screeen/movie.dart';
import 'all_animations/animatedd_builderr.dart';
import 'all_animations/buttom curve navigationn/bottom_navigations_animation.dart';
import 'all_animations/button_animation.dart';
import 'all_animations/fab_circular_animation.dart';
import 'all_animations/hidee_appbaar.dart';
import 'all_animations/routes_aniimations/routes_animations.dart';
import 'all_animations/scrooll_list/scrol_list.dart';
import 'all_animations/shimmer_loading_animation/shimmer_loder_animation.dart';
import 'all_animations/shoping_cart_animation.dart';
import 'all_animations/swipper_animations/swipper_animation.dart';
import 'all_animations/text_aniimation.dart';
import 'all_animations/textt_slide_animations.dart';
import 'foo animation/animatedd_containerr.dart';
import 'foo animation/animatedd_opacity.dart';
import 'foo animation/cross_fadee.dart';
import 'heroo_animation/navigationn_ani.dart';
import 'listt_wheel_scrollview/three_d_list.dart';
import 'transitions/slidee_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MovieDisplay(),
    );
  }
}


