import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SwiperScreen extends StatelessWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 10,
        title: const Text(
          'Swiper Package',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 300,
            child: Swiper(
              itemWidth: MediaQuery.of(context).size.width * .7,
              itemCount: 20,
              itemBuilder: (context,index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30,),),
                child: Image.asset(
                  'assets/images/img3.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              viewportFraction: .8,
              scale: .9,
              layout: SwiperLayout.STACK,
            ),
          ),
        ],
      ),
    );
  }
}
