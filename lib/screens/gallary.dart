import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Gallary',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.count(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(
          10,
        ),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children:
        [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img1.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img2.jpg',
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img3.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
