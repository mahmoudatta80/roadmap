import 'package:flutter/material.dart';

class TextRichTest extends StatelessWidget {
  const TextRichTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/img1.jpg',
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.12,
                          ),
                          const Text(
                            'Mahmoud atta ghazi ibrahim',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.red,
                            ),
                          ),
                          const Text(
                            'Mahmoud atta ghazi ibrahim abdo tefesh Mahmoud atta ghazi ibrahim abdo tefesh Mahmoud atta ghazi ibrahim abdo tefesh ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Elevated ',
                                  ),
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                ),
                              ],
                            ),
                            itemCount: 1,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 35,
                      start: 18,
                      end: 18,
                      bottom: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {},
                          color: Colors.red,
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {},
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Text(
                  'Trailer',
                  style: TextStyle(color: Colors.red, fontSize: 24),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TrailerBody(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrailerBody extends StatelessWidget {
  const TrailerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        image: const DecorationImage(
            image: AssetImage('assets/images/img2.jpg'), fit: BoxFit.fill),
      ),
      child: Center(
        child: FloatingActionButton(
          backgroundColor: const Color(0xffD9D9D9),
          onPressed: () {},
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
    );
  }
}
