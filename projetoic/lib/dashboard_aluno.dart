import 'package:flutter/material.dart';

class DashboardAluno extends StatelessWidget {
  const DashboardAluno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard do Aluno', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Row(

        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 200, // Set a fixed width for the button column
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement functionality for 'Gerar Relatório'
                  },
                  icon: Icon(Icons.report),
                  label: const Text('Gerar Relatório', style: TextStyle(color: Colors.black)),

                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement functionality for 'Configurações'
                  },
                  icon: Icon(Icons.settings),
                  label: const Text('Configurações', style: TextStyle(color: Colors.black)),

                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Teste', style: TextStyle(color: Colors.white))),

                    DataColumn(label: Text('Resultado', style: TextStyle(color: Colors.white))),

                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Teste 1', style: TextStyle(color: Colors.white))), 

                      DataCell(Text('Aprovado', style: TextStyle(color: Colors.white))),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Teste 2', style: TextStyle(color: Colors.white))),

                      DataCell(Text('Reprovado', style: TextStyle(color: Colors.white))),

                    ]),
                    // Add more test results as needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
