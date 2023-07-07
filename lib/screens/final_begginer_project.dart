import 'package:flutter/material.dart';

class FinalProjectForBegginer extends StatelessWidget {
  const FinalProjectForBegginer({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Colors.white,
            ),
            child: Column(
              children:
              [
                Expanded(
                  child: Row(
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children:
                          [
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_back_outlined,
                                  size: 20,
                                ),
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                      'https://m.media-amazon.com/images/I/8107kOhQuOL._AC_SL1500_.jpg',
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81Z+wr8oj+L._AC_SL1500_.jpg',
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/715c1GJnf+L._AC_SL1500_.jpg',
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: const Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81WFOOJNWKL._AC_SL1500_.jpg',
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                const Center(
                                  child: Image(
                                    height: 200,
                                    image: NetworkImage(
                                      'https://m.media-amazon.com/images/I/8107kOhQuOL._AC_SL1500_.jpg',
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.black12,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border_outlined,
                                      size: 20,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children:
                        [
                          Row(
                            children:
                            [
                              const Text(
                                  'Sony Wh-1000XM4',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 5,
                                    end: 5,
                                  ),
                                  child: Row(
                                    children:
                                    [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellowAccent,
                                      ),
                                      Spacer(),
                                      Text(
                                          '4.9',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry .',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children:
                            [
                              Container(
                                width: 40,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: Icon(
                                  Icons.featured_play_list_outlined,
                                  size: 20,
                                  color: Colors.pinkAccent[200],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Product Specification',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: (){},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 19,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 1,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children:
                            [
                              Container(
                                width: 40,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                ),
                                child: Icon(
                                  Icons.account_tree,
                                  size: 20,
                                  color: Colors.pinkAccent[200],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Colors',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black54,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.pinkAccent.shade100,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children:
                            [
                              const Text(
                                  '\$349.',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '99',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 170,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent[200],
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 25,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add To Card',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 19,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
