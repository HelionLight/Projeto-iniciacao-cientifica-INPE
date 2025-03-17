import 'package:flutter/material.dart';

class DashboardProfessor extends StatelessWidget {
  const DashboardProfessor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard do Professor', style: TextStyle(color: Colors.white)),

      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to homepage
              },
              child: const Text('Go to Homepage', style: TextStyle(color: Colors.white)), // Button to navigate back

            ),
            ElevatedButton(
              onPressed: () {
                // Implement functionality for 'Adicionar Aluno'
                // Example: Show a dialog to add a new professor
              },
              child: const Text('Adicionar Aluno', style: TextStyle(color: Colors.white)),

            ),

            ElevatedButton(
              onPressed: () {
                // Implement functionality for 'Gerar Relatório'
                // Example: Navigate to report generation page
              },
              child: const Text('Gerar Relatório', style: TextStyle(color: Colors.white)),

            ),

            ElevatedButton(
              onPressed: () {
                // Implement functionality for 'Configurações'
                // Example: Navigate to settings page
              },
              child: const Text('Configurações', style: TextStyle(color: Colors.white)),

            ),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Professor: Maria Oliveira', style: TextStyle(color: Colors.white)),

                    subtitle: Text('Disciplina: Matemática', style: TextStyle(color: Colors.white)),

                  ),
                  // Add more professors as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
