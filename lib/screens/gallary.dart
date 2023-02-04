import 'package:flutter/material.dart';

class Gallary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<int> count = List.generate(5, (index) => 1);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Gallary',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.count(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
            child: Image(
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
