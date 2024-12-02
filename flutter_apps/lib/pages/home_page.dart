import 'package:flutter/material.dart';
import 'package:flutter_apps/service/gerador_numero_aleatorio_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var numeroGerado = 0;
  @override
  Widget build(BuildContext context) {
    // debugPrint('Chamado método build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          //   style: GoogleFonts.pacifico(),
        ),
      ),
      body: Center(
          child: Text(
        numeroGerado.toString(),
        //style: GoogleFonts.acme(fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
            });
          }),
    );
  }
}
