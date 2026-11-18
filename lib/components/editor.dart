import 'package:flutter/material.dart';

class Editor extends StatelessWidget {

  final TextEditingController? cant;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  Editor( {this.cant, this.rotulo, this.dica, this.icone} );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: cant,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,

        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}