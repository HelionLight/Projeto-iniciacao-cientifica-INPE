import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});
  
  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajuda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Como Funciona o Aplicativo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                '1. Homepage: Esta é a página inicial do aplicativo, onde você pode navegar para diferentes seções, como Exercícios, Provas, e Materia.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '2. Exercícios: Aqui você encontrará uma lista de exercícios. Você pode clicar em um exercício para ver mais detalhes e imagens relacionadas.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '3. Dashboard do Aluno: Esta página exibe informações sobre o aluno, incluindo notas e provas. Você pode adicionar novos alunos e gerar relatórios.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '4. Dashboard do Professor: Semelhante ao dashboard do aluno, mas voltado para as funcionalidades do professor, como gerenciamento de alunos e relatórios.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '5. Matéria: Esta página fornece informações sobre as matérias disponíveis no aplicativo.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '6. Provas: Aqui você pode acessar informações sobre provas padrão e suas respectivas notas.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
