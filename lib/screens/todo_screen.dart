import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> titles = ['Communication systems quiz','OS Report','Buy Some Stuff','Go To The Gym','Flutter Task','Flutter Task بردو'];
    List<String> times = ['10:00','11:00','01:00','02:00','04:00','06:00'];
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        elevation: 0,
        title: Text(
          'Todo List',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemBuilder: (context , index) {
              return Column(
                children:
                [
                  Row(
                    children:
                    [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                              '${titles[index]}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                              '${times[index]} AM',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: ()
                        {
                          showDialog(
                            barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'Delete',
                                  ),
                                  content: Text(
                                    'Are you sure , you wanna delete this item',
                                  ),
                                  actions:
                                  [
                                    TextButton(onPressed: ()
                                    {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'Cancel',
                                    ),
                                    ),
                                    TextButton(
                                      onPressed: ()
                                    {
                                      Navigator.of(context).pop();
                                    },
                                      child: Text(
                                        'Yes',
                                      ),
                                    ),
                                  ],
                                );
                              },
                          );
                        },
                        icon: Icon(
                          Icons.delete_forever_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                ],
              );
            },
            itemCount: titles.length,
            ),
      ),
    );
  }
}
