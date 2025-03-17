import 'package:flutter/material.dart';

class CriarProvas extends StatelessWidget {
  const CriarProvas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_upward, color: Colors.yellow), onPressed: () {}),
                IconButton(icon: Icon(Icons.arrow_downward, color: Colors.yellow), onPressed: () {}),
              ],
            ),
            IconButton(icon: Icon(Icons.arrow_back, color: Colors.yellow), onPressed: () {
              Navigator.pop(context); // Navigate back
            }),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    color: Color(0xFF444444),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          color: Color(0xFF222222),
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("QUESTÃO 1", style: TextStyle(color: Colors.yellow)),
                              DropdownButton<String>(
                                items: <String>['Múltipla Escolha', 'Verdadeiro/Falso', 'Dissertativa']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                hint: Text("TIPO: MÚLTIPLA ESCOLHA", style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Digite a questão aqui...",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            maxLines: 4,
                          ),
                        ),
                        Image.network("https://example.com/your_image_url_1.jpg"), // Replace with actual image URL
                        Image.network("https://example.com/your_image_url_2.jpg"), // Replace with actual image URL
                      ],
                    ),
                  ),
                  // Repeat for additional questions...
                ],
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                // Implement functionality for the FloatingActionButton
              },
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
