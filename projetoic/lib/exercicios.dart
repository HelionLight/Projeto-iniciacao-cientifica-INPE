import 'package:flutter/material.dart';
import 'homepage.dart';

class Exercicios extends StatefulWidget {
  const Exercicios({super.key});

  @override
  _ExerciciosState createState() => _ExerciciosState();
}

class _ExerciciosState extends State<Exercicios> {
  bool _showExercises = false; // Variable to manage visibility of the list

  final List<String> _exerciseList = List.generate(20, (index) => 'FLORESTA $index'); // Dynamic data for exercises

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLORESTAS'),
        centerTitle: true,
        backgroundColor: Color(0xFF0044CC),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xFFD3D3D3),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement functionality for 'Treinar' button
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text('Treinar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement functionality for 'Avaliar' button
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text('Avaliar'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _exerciseList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_exerciseList[index]), // Use dynamic data
                    tileColor: Colors.yellow,
                    onTap: () {
                      // Implement functionality for tapping on the exercise
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    // Implement functionality for left arrow button
                  },
                ),
                IconButton(
                  icon: Icon(Icons.info),
                  onPressed: () {
                    // Implement functionality for info button
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Implement functionality for settings button
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
