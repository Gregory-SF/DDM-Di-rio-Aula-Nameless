import 'package:aula_3/aula_3/cidade.dart';
import 'package:aula_3/aula_3/estado.dart';

import 'pessoa_required.dart';
// import 'dart:io';

double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}

void main() {
  var estado = Estado(nome: 'PARANÁ', sigla: 'PR');

  var cidade = Cidade(estado: estado, nome: 'Paranavaí');

  var pessoa1 = Pessoa(
      nome: 'Greg',
      peso: 63,
      altura: 1.80,
      imc: (double altura, double peso) => peso / (altura * altura),
      cidade: cidade);

  // print(pessoa1.printIMC());

  print('nome: ${pessoa1.nome} e peso: ${pessoa1.peso}');

  Pessoa(
      nome: 'Jonathan',
      altura: 1.80,
      peso: 70.0,
      cidade: Cidade(
        nome: 'MARINGÁ', estado: Estado(
            nome: 'PARANÁ', sigla: 'PR')),
      imc: (double altura, double peso) => peso / (altura * altura));
}
