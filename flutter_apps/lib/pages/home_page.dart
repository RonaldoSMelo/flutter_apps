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
  var quantidadeClicks = 0;
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
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.cyan,
              child: const Text(
                " Ações do usuário",
                //style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.orange,
                child: Text(
                  " Foi clicado $quantidadeClicks Vezes",
                  //style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.indigo,
                child: Text(
                  " O número gerado foi: $numeroGerado",
                  //style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.cyan,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: const Text(
                          "Nome:",
                          //style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: const Text(
                          "Ronaldo da Silva Melo",
                          //style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                        child: const Text(
                          "30",
                          //style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
