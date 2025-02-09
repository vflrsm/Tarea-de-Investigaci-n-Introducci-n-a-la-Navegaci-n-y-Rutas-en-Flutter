import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _counter = 0;

  // Función para incrementar el contador
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  // Función para decrementar el contador
  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  // Función para reiniciar el contador
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método debe devolver un widget, que es la UI de la pantalla
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: _counter,
                );
              },
              child: Text("Finalizar"),
            ),
            SizedBox(height: 20),
            Text("Contador:", style: TextStyle(fontSize: 20)),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$_counter',
                key: ValueKey<int>(_counter),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _decrement, child: Text("-")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _increment, child: Text("+")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _reset, child: Text("Reset")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
