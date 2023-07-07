import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewTest extends StatefulWidget {
  const NewTest({Key? key}) : super(key: key);

  @override
  State<NewTest> createState() => _NewTestState();
}

class _NewTestState extends State<NewTest> {
  var instance = FirebaseFirestore.instance
      .collection('users')
      .doc('QIw8wOf8OVffv8moOCBSDS9UTxQ2');
  bool isOpen = false;
  void getData() {

  }

  @override
  void initState() {
    instance
        .get()
        .then((value) {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('first App'),
          IconButton(
            onPressed: () {
              instance.update({
                'isOpen': false,
              });
            },
            icon: const Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              instance.update({
                'isOpen': true,
              });
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      // body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      //   stream: instance.snapshots(),
      //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //     if (snapshot.hasData) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text('first App'),
      //           snapshot.data['isOpen'] ?IconButton(
      //             onPressed: () {
      //               instance.update({
      //                 'isOpen': false,
      //               });
      //             },
      //             icon: Icon(
      //               Icons.remove,
      //             ),
      //           ):IconButton(
      //             onPressed: () {
      //               instance.update({
      //                 'isOpen': true,
      //               });
      //             },
      //             icon: Icon(
      //               Icons.add,
      //             ),
      //           ),
      //         ],
      //       );
      //     }else {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //   },
      // ),
    );
  }
}
