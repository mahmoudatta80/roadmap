import 'package:flutter/material.dart';
import 'package:roadmap/bmi_calculator/bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});


  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale = true;
  double height = 160;
  int weight = 60;
  int age= 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        elevation: 0,
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children:
                [
                  Expanded(
                    child: Row(
                      children:
                      [
                        Expanded(
                          child: InkWell(
                            onTap: ()
                            {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isMale?Colors.teal[900]:Colors.teal,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10,),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male_outlined,
                                    size: 65,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: ()
                            {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isMale?Colors.teal:Colors.teal[900],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10,),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female_outlined,
                                    size: 65,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10,),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          const Text(
                            'HEIGHT',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${height.round()}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            inactiveColor: Colors.white60,
                            activeColor: Colors.teal[900],
                            min: 140,
                            max: 220,
                            value: height,
                            onChanged: (value){
                              setState(() {
                                height = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      children:
                      [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10,),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                const Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  [
                                    FloatingActionButton(
                                      backgroundColor: Colors.teal[900],
                                      onPressed: ()
                                      {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Colors.teal[900],
                                      onPressed: ()
                                      {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10,),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                const Text(
                                  'AGE',
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                  [
                                    FloatingActionButton(
                                      backgroundColor: Colors.teal[900],
                                      onPressed: ()
                                      {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Colors.teal[900],
                                      onPressed: ()
                                      {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
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
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.rectangle,
            ),
            child: MaterialButton(
              onPressed: ()
              {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context)=>ResultScreen(
                      result: (weight/(height*height))*10000,
                  ),
                ),);
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
