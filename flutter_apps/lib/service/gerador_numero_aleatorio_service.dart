import 'dart:math';

class GeradorNumeroAleatorioService {
  //var numeroGerado = 0;
  static int gerarNumeroAleatorio(int numeroMaximo) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numeroMaximo);
  }
}
