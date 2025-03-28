```dart
import 'dart:io';

void main(){
    print('Hello World');

    var id; //isso permite ser de qualquer valor, mas só uma vez , se tu tentar mudar o valor vai dar erro
    // uma boa prática é sempre declarar  asssim var id = 1; para já definir o tipo dela
    int id2;
    dynamic id3; // isso permite o valor ser dinâmico, ou seja, se trocat o valor de int para string, ele aceita
    String nome;
    int idade;
    double peso;

    String? nome2; // isso permite que o valor seja nulo, ou seja, se tu não definir o valor, ele aceita

    String? resposta;
    
    print('Informe o seu nome: ');
    resposta = stdin.readLineSync();
    if(resposta != null){
        nome = resposta;
        print('O seu nome é $nome');
    } else {
        print('Resposta nula');
    }
    print('Informe a sua idade: ');
    resposta = stdin.readLineSync();
    if(resposta != null){
        try {
            idade = int.parse(resposta);
            print('A sua idade é $idade');
        } catch(e){
            print('Resposta nula');
        }
    } else {
        print('Resposta nula');
    }
    print('Informe o seu peso:');
    resposta = stdin.readLineSync()!;
    peso = double.parse(resposta);

    print('Seu nome é $nome, sua idade é $idade e o seu peso é $peso!');
}
```

```dart

import 'dart:core';
import 'dart:io';

class Endereco{
  String? cidade;
  String? estado;
  
  Endereco(String cidade, String estado){
  this.estado = estado;
  this.cidade = cidade;
  }

 printEndereco(){
     print('Mora na cidade $cidade que fica no estado $estado');
 }
}

class Pessoa{
  String? nome;
  int? idade;
  double? peso;
  Endereco? endereco;
  
  Pessoa(String nome, int idade, double peso, Endereco endereco){
    this.nome = nome;
    this.idade = idade;
    this.peso = peso;
    this.endereco = endereco;
  }
  
  printPessoa(){
      print('O $nome que tem $idade anos e pesa $peso quilos');
      endereco?.printEndereco();
  }
}

main(){
    
    String? resposta;
    String? nome;
    int? idade;
    double? peso;
    String? cidade;
    String? estado;
    
    print('Informe o seu estado:');
    resposta = stdin.readLineSync();
    if(resposta != null){
        estado = resposta;
    } else {
        print('Resposta nula');
    }
    print('Informe a sua cidade:');
    resposta = stdin.readLineSync();
    if(resposta != null){
        cidade = resposta;
    } else {
        print('Resposta nula');
    }
    print('Informe o seu nome:');
    resposta = stdin.readLineSync();
    if(resposta != null){
        nome = resposta;
    } else {
        print('Resposta nula');
    }
    print('Informe a sua idade:');
    resposta = stdin.readLineSync();
    if(resposta != null){
        try {
            idade = int.parse(resposta);
        } catch(e){
          print('Resposta deveria ser um valor inteiro');
        }
    } else {
      print('Resposta nula');
    }
    print('Informe o seu peso:');
    resposta = stdin.readLineSync();
    if(resposta != null){
      try {
        peso = double.parse(resposta);
      } catch(e){
        print('Resposta deveria ser um número');
      }
    } else {
        print('Resposta nula');
    } 
    try{
      Endereco endereco = Endereco(cidade!, estado!);
      Pessoa pessoa = Pessoa(nome!, idade!, peso!, endereco);
      pessoa.printPessoa();
      } catch(e){
      print('Algumas informações estão faltando');
  }

}

```




teste
```dart
 
import 'dart:core';
import 'dart:io';

class Endereco{
  String? cidade;
  String? estado;
  
  Endereco(String cidade, String estado){
  this.estado = estado;
  this.cidade = cidade;
  }

 printEndereco(){
     print('O usuário mora na cidade $cidade que fica no estado $estado');
 }

}

class Pessoa{
  String? nome;
  int? idade;
  double? peso;
  Endereco? endereco;
  
  Pessoa(String nome, int idade, double peso, Endereco endereco){
    this.nome = nome;
    this.idade = idade;
    this.peso = peso;
    this.endereco = endereco;
  }
  
  printPessoa(){
      print('O $nome que tem $idade anos e pesa $peso quilos');
      endereco?.printEndereco();
  }
  
    isNull(var atribute){
    if(atribute == null){
        throw Exception('Resposta nula');
    }
      }
      
      isInt(var atribute){
        if(atribute is int){
          print('Preencha com um valor inteiro');
          throw Error();
        }
      }
        
       isNumber(var atribute){
        if(atribute.isNan){
          print('Preencha com um valor numérico');
          throw Error();
        }
      }
}

main(){
    
    String? resposta;
    String? nome;
    int idade;
    double? peso;
    String? cidade;
    String? estado;
    


    print('Informe o seu estado: ');
    resposta = stdin.readLineSync();
    pessoaisNull(resposta);
    estado = resposta;
    print('Informe o sua cidade: ');
    resposta = stdin.readLineSync();
    if(resposta != null){
        cidade = resposta;
    } else {
        print('Resposta nula');
    }
    print('Informe o seu nome: ');
    resposta = stdin.readLineSync();
    if(resposta != null){
        nome = resposta;
    } else {
        print('Resposta nula');
    }
    print('Informe a sua idade: ');
    resposta = stdin.readLineSync();
    if(resposta != null){
        try {
            idade = int.parse(resposta);
        } catch(e){
          print('Resposta nula');
          throw new Error();
        }
    } else {
      print('Resposta nula');
      throw new Error();
    }
    print('Informe o seu peso:');
    resposta = stdin.readLineSync();
    if(resposta != null){
      try {
        peso = double.parse(resposta);
      } catch(e){
        print('Resposta nula');
      }
    } else {
        print('Resposta nula');
    } 
    try{
      Endereco endereco = Endereco(cidade!, estado!);
      endereco.printEndereco();
      Pessoa pessoa = Pessoa(nome!, idade!, peso!, endereco);
      pessoa.printPessoa();
      } catch(e){
      print('Erro');
  }

}
```