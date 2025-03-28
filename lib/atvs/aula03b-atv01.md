# Atividade: Criação de Classes em Dart

📌 **Instruções:** Responda cada questão com atenção, aplicando os conceitos estudados. As perguntas aumentam gradativamente de dificuldade, então siga na ordem sugerida.

## Parte 1: Conceitos básicos de classes e atributos nulos (?)

1. O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo.

R: Significa que você está aceitando valores nulos nesse atributo. 
```dart
class Cliente{
    String? genero;
}
```

2. No código abaixo, há um erro. Qual é ele? Como corrigir?
```dart
class Carro {
  String? marca;
  int ano;
}
```

R:
```dart
class Carro {
  String? marca;
  int? ano;
}
```

3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:
```dart
class Produto {
  _______ nome;
  _______ preco;
}
```

R:
```dart
class Produto {
  String? nome;
  double? preco;
}
```

4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:
```dart
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String? nome;
  double? preco;
}
```

R:
```dart
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String nome = 'Guarda-chuva de chocolate';
  double preco = 9.99;
}
```


---

## Parte 2: Uso do late

5. Explique a diferença entre ? e late na declaração de atributos em Dart.

R: O operador ? significa que o valor pode ser nulo, mas com late você espera ser atribuido futuramente, isso não significa que ele vai ser nulo;

6. No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique.
```dart
class Pessoa {
  late int idade;
}
```

R: Dará erro de execução.

# 7. Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:
```dart
class Funcionario {
  late String nome;
  late double salario;
}
```

---

## Parte 3: Construtores e Inicialização Obrigatória
8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.
```dart
class Aluno {
  String nome;
  double nota;
}
```

R:
```dart
class Aluno {
  String nome;
  double nota;

  Aluno({required this.nome, required this.nota});
}
```

9. Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?

# R: Chance de evitar erros de compliação e execução


10. Modifique o código abaixo para utilizar parâmetros nomeados no construtor:
```dart
class Endereco {
  String rua;
  String cidade;
  
  Endereco(this.rua, this.cidade);
}
```

R:
```dart
class Endereco {
  String rua;
  String cidade;
  
  Endereco({this.rua, this.cidade});
}
```

---

## Parte 4: Validação com Getters e Setters

11. O que são métodos get e set em Dart? Para que servem?

R: Métodos get são métodos que retornam o valor de um atributo, métodos set definem um valor para um atributo. Servem quandose usam atributos privados


12. Implemente um getter para a classe Retangulo que calcule a área automaticamente:
```dart
class Retangulo {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);
}
```
R:
```dart
class Retangulo {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);
  
  double get area => altura * largura;
}
```

13. Modifique a classe abaixo para que o set de idade não permita valores negativos:
```dart
class Pessoa {
  int idade;
  
  Pessoa(this.idade);
}
```

R:
```dart
class Pessoa {
  int idade;
  
  Pessoa(this.idade);

  set idade(int idade){
    if(idade > 0) this.idade = idade;
  }
}
```

14. Modifique a classe abaixo para que o set de idade não permita valores negativos:
```dart
class Pessoa {
  double _peso;
  
  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) _peso = novoPeso;
  }
  
  Pessoa(this._peso);
}
```
R:
```dart
class Pessoa {
  double _peso;
  double _idade;

  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) _peso = novoPeso;
  }

  double get idade => _idade;
  set peso(double novaIdade) {
    if (novaIdade > 0) _idade = novaIdade;
  }
  
  Pessoa(this._peso, this._idade);
}
```

---

## Parte 5: Aplicação Prática e Exercícios Avançados

15. Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.

R:
```dart
class ContaBancaria{
    String titular;
    double saldo
}

```

16. Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo.

17. Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).

18. Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7.

19. Crie uma classe Produto que tenha um atributo preco e aplique um desconto fixo de 10% ao chamar um método aplicarDesconto().

20. Crie um programa que utilize tudo o que foi aprendido, simulando um sistema de cadastro de pessoas, onde o usuário pode inserir nome, idade e peso, com validação dos dados antes de exibi-los na tela.