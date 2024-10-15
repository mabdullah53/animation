import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'images_model.dart';


class SwiperAnimation extends StatefulWidget {


  const SwiperAnimation({
    super.key,
  });

  @override
  State<SwiperAnimation> createState() => _SwiperAnimationState();
}

class _SwiperAnimationState extends State<SwiperAnimation> {
  final List<String> images = ImageList.getImages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Swiper(
              itemWidth: 400,
              itemHeight: 260,
              loop: true,
              duration: 500,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(
                        images[index],
                      ),

                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
              itemCount: images.length,
              layout: SwiperLayout.STACK,
            ),
          ),
          const SizedBox(height: 50,),
          const Text(
            "Swiper Animation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}