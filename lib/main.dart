import 'package:flutter/material.dart';
import 'package:livro_app1/screens/transferencia/lista.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF5F2FB),
          foregroundColor: Color(0xFF231A3A), // cor do título e dos ícones
        ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF6B3FD0),
          foregroundColor: Colors.white,
      )
      ),

      home: ListaTransferencia(),
    );
  }
}











