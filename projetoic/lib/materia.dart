import 'package:flutter/material.dart';
import 'materia_professor.dart';
import 'homepage.dart';

class Materia extends StatefulWidget {
  const Materia({super.key}); // Updated constructor to remove aluno

  @override
  _MateriaState createState() => _MateriaState();
}

class _MateriaState extends State<Materia> {
  bool _showMaterials = false; // Variable to manage visibility of the list

  final List<Map<String, dynamic>> _materias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MATÉRIAS'),
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
                setState(() {
                  _showMaterials = !_showMaterials; // Toggle visibility
                });
              },
              child: Text(_showMaterials ? 'Ocultar Materiais' : 'Mostrar Materiais'),
            ),
            if (_showMaterials) ...[
              // Display actual materials here
              Text('Aqui estão os materiais disponíveis.'),
            ],
          ],
        ),
      ),
    );
  }
}
