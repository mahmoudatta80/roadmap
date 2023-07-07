import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget
{
  double? result;
  ResultScreen({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    const Text(
                      'Your Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
                          borderRadius: BorderRadius.circular(20,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              checkState(result!),
                              style: TextStyle(
                                color: Colors.teal[900],
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Text(
                              result!.toStringAsFixed(1),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 75,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Text(
                              'You have a ${checkState(result!)} body weight.',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              kindOfJob(result!),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'RE-CALCULATE',
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
      ),
    );
  }
}

String checkState(double result)
{
  if(result>0 && result<=18.5)
  {
    return 'Under weight';
  }else if(result>18.5 && result<=25)
  {
    return 'Normal';
  }else if(result>25 && result<=35)
  {
    return 'Over weight';
  }else
  {
    return 'Obesity';
  }
}

String kindOfJob(double result)
{
  if(result>18.5 && result<=25)
  {
    return 'Good job';
  }else
  {
    return 'Check yourself !';
  }
}
