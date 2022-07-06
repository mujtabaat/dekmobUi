import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("D E S K T O P"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          //first coloumn
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      //    height: 250,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          color: Colors.deepPurple[300],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          // 2nd coloumn

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              // transform: Matrix4.rotationZ(0.4),
              color: Colors.deepPurple[300],
            ),
          )
        ]),
      ),
    );
  }
}
