import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Local with Getx"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 30,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                hint: Text("Enter anything here"),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Save", style: TextStyle(fontSize: 18, color: Colors.black),),),
            Text(
              "Local Storage: ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
