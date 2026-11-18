
import 'package:flutter/material.dart';
import 'package:livro_app1/models/transferencia.dart';
import 'package:livro_app1/screens/transferencia/formulario.dart';

const _tituloAppBar = 'Ola, Amor';

class ListaTransferencia extends StatefulWidget {

  final List<Transferencia> _tranferencias = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencia> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount:widget._tranferencias.length,
        itemBuilder: (context, indice){
          final tranferencia = widget._tranferencias[indice];
          return ItemTransferencia(tranferencia);
        },

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push<Transferencia>( context, MaterialPageRoute(builder: (context){
            return FormularioTranf();
          })).then((transferenciaRec) =>
            _atualiza(transferenciaRec));
        },
      ),
    );
  }

  void _atualiza(Transferencia? transferenciaRec) {
    if (transferenciaRec != null) {
      setState(() {
        widget._tranferencias.add(transferenciaRec);
      });
    }
  }

}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numeroConta.toString()),
        )
    );
  }

}