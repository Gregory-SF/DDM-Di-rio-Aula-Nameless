```dart
<!-- classe pessoa -->

class Pessoa{
    String? nome;
    double? peso
}

<!-- classe main -->
import 'pessoa.dart';
import 'dart:io';

void main() {
    var pessoa1 = Pessoa();
    print('nome:');
    pessoa1.nome = stdin.readLineSync();

    print('peso:');
}

```

tem problema no late pq é possível ele não dar erro de compilação se vc tentar ler, mas vai dar erro em tempo de execução


nominal, a ordem nçao importa, e pode ser nulo
posicional não pode ser nulo