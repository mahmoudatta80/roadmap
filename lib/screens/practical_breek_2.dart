import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class PracticalBreek extends StatefulWidget {

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
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
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
                  child: Image(
                    image: AssetImage(
                      'assets/images/belguim.jpg',
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: Center(
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
                      margin: EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: Center(
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
                      margin: EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: Center(
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
                      margin: EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: Center(
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
                      margin: EdgeInsetsDirectional.only(
                        bottom: 20,
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8,),
                      ),
                      child: Center(
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
                  Text(
                      'Belgium Euro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'AudioWide',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      '20/21  Away by Adidas',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                      fontFamily: 'AudioWide',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Rate(
                        color: Colors.red,
                        initialValue: 4,
                        onChange: (v)
                        {
                          print(v);
                          setState(() {
                            x=v;
                          });
                        },
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        x.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AudioWide',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 130,
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
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                y.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'AudioWide',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
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
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
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
                      Spacer(),
                      Container(
                        height: 115,
                        width: 90,
                        //padding: EdgeInsets.all(20),
                        child: Column(
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
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
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
