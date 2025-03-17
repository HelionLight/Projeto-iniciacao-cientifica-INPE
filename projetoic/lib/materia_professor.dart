import 'package:flutter/material.dart';

class MateriaProfessor extends StatelessWidget {
  const MateriaProfessor({super.key}); // Single constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matéria do Professor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to homepage
              },
              child: const Text('Go to Homepage'), // Button to navigate back
            ),
            const Text('Conteúdo da Matéria do Professor'), // Updated to reflect content display
            // Add more dynamic content as needed
            ListTile(
              title: Text('Matéria: Matemática'),
              subtitle: Text('Conteúdo: Álgebra, Geometria, Trigonometria'),
            ),
            ListTile(
              title: Text('Matéria: Física'),
              subtitle: Text('Conteúdo: Mecânica, Termodinâmica, Óptica'),
            ),
            // Add more subjects as needed
          ],
        ),
      ),
    );
  }
}
