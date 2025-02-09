import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final int counter = ModalRoute.of(context)?.settings.arguments as int? ?? 0;
    return Scaffold(
      appBar: AppBar(title: Text("Segunda Pantalla")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador recibido: $counter", // Mostrar el contador recibido
              style: TextStyle(fontSize: 30, color: Color(0xFFF59942)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/third',
                  arguments: counter,
                );
              },
              child: Text('Ver gráfico de avance',
                  style: TextStyle(color: Color.fromARGB(255, 245, 66, 66))),
            ),
            //PARA VOLVER POR SI ACASO NECESITASSSSSS
            //ElevatedButton(
            //onPressed: () {
            //Navigator.pop(context);
            //},
            //child: Text('Volver a primera pantalla'))
          ],
        ),
      ),
    );
  }
}
