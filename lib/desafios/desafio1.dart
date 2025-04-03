
class Endereco {
  String rua;
  Cidade cidade;
  int numeroCasa;

  Endereco({required this.numeroCasa, required this.rua, required this.cidade});
}

class Cidade {
  String nome;
  Estado estado;

  Cidade({required this.nome, required this.estado});
}

class Estado {
  String nome;
  Pais pais;
  String cigla;

  Estado({required this.nome, required this.cigla, required this.pais});
}

class Pais {
  String nome;

  Pais({required this.nome});
}

class Cliente {
  String nome;
  Endereco endereco;
  String cpf;

  Cliente({required this.nome, required this.endereco, required this.cpf});
}

class Produto {
  Fornecedor fornecedor;
  String nome;
  double valor;
  Function calculaPreco;

  Produto({
    required this.fornecedor,
    required this.nome,
    required this.valor,
    required this.calculaPreco,
  });
}

class Fornecedor {
  Endereco endereco;
  String nome;
  String cnpj;
  String nomeEmpresa;

  Fornecedor({
    required this.nome,
    required this.cnpj,
    required this.endereco,
    required this.nomeEmpresa,
  });
}

class Venda {
  Produto produto;
  Cliente cliente;
  Fornecedor fornecedor;
  Function validar;

  Venda({
    required this.cliente,
    required this.fornecedor,
    required this.produto,
    required this.validar,
  });


}

// void main() {




// var venda = Venda(
//   cliente: Cliente(
//     ddd
//   )
// )





//   Venda venda = Venda(
//     cliente: Cliente(
//       nome: "nome",
//       endereco: Endereco(
//         13,
//         rua: "rua",
//         cidade: Cidade(
//           nome: "nome",
//           estado: Estado(
//             nome: "nome",
//             cigla: "cigla",
//             pais: Pais(nome: "nome"),
//           ),
//         ),
//       ),
//       cpf: "cpf",
//     ),
//     fornecedor: Fornecedor(
//       nome: "nome",
//       cnpj: "cnpj",
//       endereco: Endereco(
//         13,
//         rua: "rua",
//         cidade: Cidade(
//           nome: "nome",
//           estado: Estado(
//             nome: "nome",
//             cigla: "cigla",
//             pais: Pais(nome: "nome"),
//           ),
//         ),
//       ),
//       nomeEmpresa: "nomeEmpresa",
//     ),produto: Produto(fornecedor: Fornecedor(nome: "nome", cnpj: "cnpj", endereco: Endereco(12, rua: "rua", cidade: Cidade(nome: "nome", estado: Estado(nome: "nome", cigla: "cigla", pais: Pais(nome: "nome")))), nomeEmpresa: "nomeEmpresa"), nome: "nome", valor: 12, imc: {
//     }

//     }};
    
//   )
// }
