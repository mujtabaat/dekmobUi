import 'package:flutter/material.dart';

class mobilebody extends StatelessWidget {
  const mobilebody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("M O B I L E"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.music_video)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.grade)),
              Tab(icon: Icon(Icons.email)),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  height: 250,
                  color: Colors.deepPurple[400],
                  child: const TabBarView(children: [
                    Icon(Icons.music_note),
                    Icon(Icons.music_video),
                    Icon(Icons.camera_alt),
                    Icon(Icons.grade),
                    Icon(Icons.email)
                  ]),
                ),
              ),
            ),
            //  bottom secction of youtube
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
        persistentFooterButtons: const [
          Icon(Icons.settings),
          SizedBox(width: 5),
          Icon(Icons.exit_to_app),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
