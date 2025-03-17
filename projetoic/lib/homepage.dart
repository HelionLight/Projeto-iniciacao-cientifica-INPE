import 'package:flutter/material.dart';
import 'package:projetoic/materia.dart';

import 'dashboard_aluno.dart';
import 'dashboard_professor.dart';
import 'provas.dart';
import 'exercicios.dart';
import 'ajuda.dart';
import 'criarprovas.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Custom Web Page',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10), // Adjusted padding for better layout

        decoration: BoxDecoration(
          color: Color(0xFF444444),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Column(
              children: [
                Image.network("https://via.placeholder.com/150"), // Placeholder image
                Image.network("https://via.placeholder.com/150"), // Placeholder image for second button

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Materia()),
                    );
                  },
                  child: const Text('Matéria'),
                ),
                // Add image above the button
                Image.network("https://via.placeholder.com/150"), // Placeholder image for Matéria
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Exercicios()),
                    );
                  },
                  child: const Text('Exercícios'),
                ),
                // Add image above the button
                Image.network("https://via.placeholder.com/150"), // Placeholder image for Exercícios
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Prova()),
                    );
                  },
                  child: const Text('Provas'),
                ),
                // Add image above the button
                Image.network("https://via.placeholder.com/150"), // Placeholder image for Provas
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardAluno()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  child: const Text('Dashboard do Aluno'),
                ),
                // Add image above the button
                // Image.network("https://via.placeholder.com/150"), // Placeholder image for Dashboard do Aluno

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardProfessor()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  child: const Text('Dashboard do Professor'),
                ),
                // Add image above the button
                // Image.network("https://via.placeholder.com/150"), // Placeholder image for Dashboard do Professor

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ajuda()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Updated to gray
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Updated to rectangle
                    ),
                  ),
                  child: const Text('Ajuda'),
                ),
                // Add image above the button
                // Image.network("https://via.placeholder.com/150"), // Placeholder image for Ajuda

              ],
            ),
          ],
        ),
      ),
    );
  }
}
