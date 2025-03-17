import 'package:flutter/material.dart';

class Prova extends StatelessWidget {
  const Prova({super.key});

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
            IconButton(icon: Icon(Icons.arrow_back, color: Colors.yellow), onPressed: () {}),
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
                              Text("ESPECIFICAÇÃO: [NOME DA FLORESTA]", style: TextStyle(color: Colors.yellow)),
                              DropdownButton<String>(
                                items: <String>['País 1', 'País 2', 'País 3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                hint: Text("ORIGEM: [PAÍS]", style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        Image.network("https://example.com/your_image_url_1.jpg"), // Updated to use a dynamic image URL
                        Image.network("https://example.com/your_image_url_2.jpg"), // Updated to use a dynamic image URL
                      ],
                    ),
                  ),
                  // Repeat for additional specifications...
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
