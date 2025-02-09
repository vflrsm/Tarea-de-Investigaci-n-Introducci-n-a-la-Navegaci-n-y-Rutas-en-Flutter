import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    // Recuperamos el valor del contador pasado desde la segunda pantalla
    final int counter = ModalRoute.of(context)!.settings.arguments as int;

    // Aseguramos que el valor del contador esté en el rango de 0 a 100
    double progress = counter / 100;

    // Verifica si el valor es válido para evitar problemas
    if (progress < 0 || progress > 1) {
      progress = 0;
    }

    return Scaffold(
      appBar: AppBar(title: Text("Tercera Pantalla")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Verificamos que el contador no sea cero para mostrar el gráfico
            if (counter > 0) ...[
              CircularProgressIndicator(
                value: progress,
                strokeWidth: 8.0, // Ancho del círculo
                valueColor: AlwaysStoppedAnimation<Color>(
                    const Color(0xFFF39821)), // Color del progreso
              ),
            ] else ...[
              Text(
                'Contador es cero, no hay progreso.',
                style: TextStyle(fontSize: 24),
              ),
            ],
            SizedBox(height: 20),
            Text(
              'Contador: $counter', // Muestra el contador actual
              style: TextStyle(fontSize: 24, color: Color(0xFFF59942)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // Navega a la primera pantalla para reiniciar el contador
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Contar de nuevo",
                  style: TextStyle(
                    color: Color.fromARGB(255, 245, 66,
                        66), // Coloca el color hexadecimal adecuado
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
