import"package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The ListView App",
      home: ListViewApp(),
    );
  }
}
class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("The ListView App",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          color: Colors.white
        ),
        ),
      ),
      body: ListView(
        children: [
          Image.network("https://img.freepik.com/free-photo/3d-render-man-relax-practice-yoga-meditation_107791-16798.jpg?size=626&ext=jpg&ga=GA1.1.332375262.1728941065&semt=ais_hybrid"),
          const Icon(Icons.favorite,color: Colors.red,size: 28),
          const Text("Bhariii",
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
            fontWeight:FontWeight.bold
          ), 
          ),
          Image.network("https://img.freepik.com/premium-psd/figurine-deity-holding-sword-bowl-water_1217673-299561.jpg?size=626&ext=jpg&ga=GA1.1.332375262.1728941065&semt=ais_hybrid"),
          GestureDetector(
            onTap: (){
              print("Button Pressed");
            },
            child: Center(
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Press Me !!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Listview Builder Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10), // Added padding for better visual spacing
              child: Text(
                "Index: $index",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
*/