import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class PracticalBreek extends StatefulWidget {
  const PracticalBreek({super.key});


  @override
  State<PracticalBreek> createState() => _PracticalBreekState();
}

class _PracticalBreekState extends State<PracticalBreek> {
  double x = 4;
  int y = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 25,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Container(
                  height: 320,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: const Image(
                    image: AssetImage(
                      'assets/images/belguim.jpg',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: const Center(
                        child: Text(
                          's',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'AudioWide',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: const Center(
                        child: Text(
                          'L',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'AudioWide',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: const Center(
                        child: Text(
                          'm',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'AudioWide',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: const Center(
                        child: Text(
                          'XL',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'AudioWide',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: const Center(
                        child: Text(
                          '2XL',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'AudioWide',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'Belgium Euro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'AudioWide',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                      '20/21  Away by Adidas',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                      fontFamily: 'AudioWide',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Rate(
                        color: Colors.red,
                        initialValue: 4,
                        onChange: (v)
                        {
                          setState(() {
                            x=v;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        x.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'AudioWide',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: ()
                                {
                                  setState(() {
                                    y--;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                y.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: ()
                                {
                                  setState(() {
                                    y++;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontFamily: 'AudioWide',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Material: ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Polyester',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Shipping: ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'In 5 to 6 days',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Returns: ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'AudioWide',
                                ),
                              ),
                              Text(
                                'Within 20 days',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'AudioWide',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 115,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //padding: EdgeInsets.all(20),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '\$ 89',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontFamily: 'AudioWide',
                              ),
                            ),
                          ],
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
    );
  }
}
