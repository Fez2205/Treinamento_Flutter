
import 'package:flutter/material.dart';
import 'package:livro_app1/components/editor.dart';
import 'package:livro_app1/models/transferencia.dart';

const _tituloAppBar = 'Ola, Amor';
const _rotulocampoValor = 'Valor';
const _rotulocampoConta = 'Número da Conta';
const _dicaCampoValor = '0.00';
const _dicaCampoConta = '0000';
const _textoBotao = 'Confirmar';

class FormularioTranf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTranf>{

  final TextEditingController _contrNumero = TextEditingController();
  final TextEditingController _contrValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_tituloAppBar),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                cant: _contrNumero,
                dica: _dicaCampoConta,
                rotulo: _rotulocampoConta,
              ),
              Editor(
                cant: _contrValor,
                dica: _dicaCampoValor,
                rotulo: _rotulocampoValor,
                icone: Icons.monetization_on,
              ),
              ElevatedButton(
                child: Text(_textoBotao),
                onPressed: () => _criaTransf(context),
              ),
            ],
          ),
        ));
  }

  void _criaTransf(BuildContext context) {
    final int? numCont = int.tryParse(_contrNumero.text);
    final double? numVal = double.tryParse(_contrValor.text);
    if(numCont != null && numVal != null){
      final transfcri = Transferencia(numVal, numCont);
      Navigator.pop(context, transfcri);
    }
  }
}