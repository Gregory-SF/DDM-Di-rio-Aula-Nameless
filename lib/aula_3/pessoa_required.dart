import 'package:aula_3/aula_3/cidade.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;
  Cidade cidade;
  Function imc;

  Pessoa(
      {required this.nome,
      required this.peso,
      required this.altura,
      required this.cidade,
      required this.imc});

  double printIMC() {
    return imc();
  }
}
