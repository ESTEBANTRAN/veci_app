// lib/main.dart

import 'package:flutter/material.dart';
import 'package:veci_app/config/theme/theme/app_theme.dart'; // Importa tu archivo de tema

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VeciApp', // Tu título de aplicación
      theme: AppTheme.lightTheme, // Usa tu tema claro
      // themeMode: ThemeMode.system, // Opcional: para que el tema siga la configuración del sistema del dispositivo
      // darkTheme: AppTheme.darkTheme, // Opcional: si tienes un tema oscuro definido
      home: const MyHomePage(title: 'VeciApp Home'), // Tu widget de inicio
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Para acceder a los colores y estilos del tema en cualquier widget:
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        // Los colores del AppBar se toman del tema (AppColors.primaryColor)
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Este es un texto con el estilo bodyLarge del tema:',
              style: textTheme.bodyLarge, // Usando el estilo del tema
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: colorScheme.primary, // Usando un color del esquema de colores
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Campo de texto',
                  hintText: 'Escribe algo aquí',
                ),
                onChanged: (value) {
                  // Lógica del campo de texto
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // El estilo del botón se toma del temas
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Botón presionado!'),
                    backgroundColor: colorScheme.secondary, // Usando el color secundario del tema
                  ),
                );
              },
              child: const Text('Presionar Botón'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Botón Outline'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Botón de Texto'),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Esta es una tarjeta con el estilo del tema.',
                  style: textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // El color del FAB se toma del tema (AppColors.accentColor)
        child: const Icon(Icons.add),
      ),
    );
  }
}