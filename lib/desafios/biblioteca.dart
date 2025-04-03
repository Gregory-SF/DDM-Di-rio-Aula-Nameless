
// Classe de Fornecedor

class Fornecedor {
  String nome;
  String cnpj;
  String endereco;
  void Function() acaoFornecedor;

  Fornecedor({required this.nome, required this.cnpj, required this.endereco, required this.acaoFornecedor});
}

// Classe de Funcionario
class Funcionario {
  String nome;
  String cargo;
  double salario;
  void Function(String) calculaSalarioBonus;

  Funcionario({ required this.nome, required this.cargo, required this.salario, required this.calculaSalarioBonus});
}

// Classe de Departamento
class Departamento {
  String nome;
  Funcionario gerente;
  void Function() acaoDepartamento;

  Departamento({ required this.nome, required this.gerente, required this.acaoDepartamento});
}

// Classe de Cliente
class Cliente {
  String nome;
  String endereco;
  void Function() atualizarEndereco;

  Cliente({required this.nome, required this.endereco, required this.atualizarEndereco});
}

// Classe de Cidade
class Cidade {
  String nome;
  String estado;
  void Function(String) alterarEstado;

  Cidade({ required this.nome, required this.estado, required this.alterarEstado});
}

// Classe de Estado
class Estado {
  String nome;
  String pais;
  void Function() mudarPais;

  Estado({required this.nome, required this.pais, required this.mudarPais});

  // @override
  // String toString() {
  //   "${this.nome} ${this.pais}  "
  //   }
}

// Classe de País
class Pais {
  String nome;
  void Function() exibirPais;

  Pais(this.nome, {required pais, required this.exibirPais});
}

// Classe de Pedido de Venda
class PedidoVenda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, this.produto, this.quantidade, {required this.concluirVenda});
}

// Classe de Pedido de Compra
class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade, {required this.realizarCompra});
}

// Classe de Produto
class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria, {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
}

// Classe de Tipo de Produto
class TipoProduto {
  String descricao;
  void Function() exibirTipo;

  TipoProduto(this.descricao, {required this.exibirTipo});
}

// Classe de Categoria de Produto
class CategoriaProduto {
  String nome;
  String descricao;
  void Function() exibirCategoria;

  CategoriaProduto(this.nome, this.descricao, {required this.exibirCategoria});
}

// Classe de Unidade de Medida
class UnidadeMedida {
  String nome;
  String simbolo;
  void Function() atualizarUnidade;

  UnidadeMedida(this.nome, {required this.simbolo, required this.atualizarUnidade});
}

// Classe de Produto com Estoque
class ProdutoEstoque {
  Produto produto;
  int quantidade;
  void Function() ajustarEstoque;

  ProdutoEstoque(this.produto, this.quantidade, {required this.ajustarEstoque});
}

// Classe de Preço de Produto
class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro, {required this.calcularMargemLucro});
}

// Classe de Histórico de Preço
class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo, {required this.registrarAlteracao});
}

// Classe de Produto com Desconto
class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(this.produto, this.percentualDesconto, this.dataInicio, this.dataFim, {required this.aplicarDesconto});
}

// Classe de Produto com Lote
class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade, {required this.verificarLote});
}

// Classe de Produto com Localização
class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira, {required this.atualizarLocalizacao});
}

// Classe de Produto com Observações
class ProdutoObservacao {
  Produto produto;
  String observacao;
  void Function() registrarObservacao;

  ProdutoObservacao(this.produto, this.observacao, {required this.registrarObservacao});
}

// Classe de Garantia do Produto
class GarantiaProduto {
  Produto produto;
  int anosGarantia;
  String tipoGarantia;
  void Function() ativarGarantia;

  GarantiaProduto(this.produto, this.anosGarantia, this.tipoGarantia, {required this.ativarGarantia});
}

// Classe de Produto com Status de Disponibilidade
class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status, {required this.atualizarStatus});
}

// Classe de Produto com Avaliação
class AvaliacaoProduto {
  Produto produto;
  int numeroEstrelas;
  String comentario;
  void Function() registrarAvaliacao;

  AvaliacaoProduto(this.produto, this.numeroEstrelas, this.comentario, {required this.registrarAvaliacao});
}

// Classe de Produto com Imagem
class ImagemProduto {
  Produto produto;
  String urlImagem;
  void Function() exibirImagem;

  ImagemProduto(this.produto, {required this.urlImagem, required this.exibirImagem});
}

// Classe de Produto com Tamanho
class TamanhoProduto {
  Produto produto;
  String tamanho;
  void Function() atualizarTamanho;

  TamanhoProduto(this.produto, {required this.tamanho, required this.atualizarTamanho});
}

// Classe de Produto com Cor
class CorProduto {
  Produto produto;
  String cor;
  void Function() alterarCor;

  CorProduto(this.produto, {required this.cor, required this.alterarCor});
}

// Classe de Produto com Peso
class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}

// Classe de Produto com Volume
class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto, {required this.volume, required this.ajustarVolume});
}

// Classe de Produto com Embalagem
class EmbalagemProduto {
  Produto produto;
  String tipoEmbalagem;
  double pesoEmbalagem;
  void Function() alterarEmbalagem;

  EmbalagemProduto(this.produto, {required this.tipoEmbalagem, required this.pesoEmbalagem, required this.alterarEmbalagem});
}

// Classe de Estoque
class Estoque {
  Produto produto;
  int quantidade;
  void Function() atualizarEstoque;

  Estoque(this.produto, this.quantidade, {required this.atualizarEstoque});
}

// Classe de Venda
class Venda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.produto, this.quantidade, this.dataVenda, {required this.registrarVenda});
}

// Classe de Compra
class Compra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.produto, this.quantidade, this.dataCompra, {required this.registrarCompra});
}

// Classe de Compra com Lote
class CompraLote {
  Compra compra;
  String numeroLote;
  DateTime dataEntrega;
  void Function() verificarLoteCompra;

  CompraLote(this.compra, this.numeroLote, this.dataEntrega, {required this.verificarLoteCompra});
}

// Classe de Pedido de Venda com Entrega
class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  String enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega, {required this.organizarEntrega});
}

// Classe de Pedido de Compra com Frete
class PedidoCompraFrete {
  PedidoCompra pedidoCompra;
  double valorFrete;
  DateTime dataEnvio;
  void Function() calcularFrete;

  PedidoCompraFrete(this.pedidoCompra, this.valorFrete, this.dataEnvio, {required this.calcularFrete});
}

// Classe de Pedido de Compra com Pagamento
class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime data;
  
  PedidoCompraPagamento({required this.data, required this.pedidoCompra, required this.valorPago});
  }

//   // Cria um objeto Fornecedor utilizando referência anônima para a função 'acaoFornecedor'
//   var fornecedor = Fornecedor(
//     "Fornecedor A", 
//     "00.000.000/0001-00", 
//     "Rua dos Fornecedores, 123",
//     acaoFornecedor: () {
//       // Função anônima para simular uma ação do fornecedor
//       print("Ação do Fornecedor A executada!");
//     }
//   );
  
//   // Exibe o nome do fornecedor
//   print("Fornecedor: ${fornecedor.nome}");
  
//   // Executa a ação anônima associada
//   fornecedor.acaoFornecedor();
// }

// void main2() {
//   // Cria um objeto TipoProduto com função anônima para exibir o tipo
//   var tipo = TipoProduto("Eletrônico", exibirTipo: () {
//     print("Tipo: Eletrônico");
//   });
  
//   // Cria um objeto CategoriaProduto com função anônima para exibir a categoria
//   var categoria = CategoriaProduto("Informática", "Produtos de TI", exibirCategoria: () {
//     print("Categoria: Informática");
//   });
  
//   // Cria um objeto UnidadeMedida com função anônima para atualizar a unidade
//   var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
//     print("Unidade atualizada");
//   });
  
//   // Cria um objeto Fornecedor necessário para o produto
//   var fornecedor = Fornecedor(
//     "Fornecedor X", 
//     "11.111.111/0001-11", 
//     "Av. dos Fornecedores, 456",
//     acaoFornecedor: () {
//       print("Fornecedor X acionado");
//     }
//   );
  
//   // Cria o objeto Produto utilizando referência anônima para a função ajustarPreco
//   var produto = Produto(
//     "Notebook", 
//     3500.00, 
//     tipo, 
//     categoria, 
//     unidadeMedida: unidade, 
//     fornecedor: fornecedor, 
//     ajustarPreco: () {
//       print("Preço do Notebook ajustado!");
//     }
//   );
  
//   // Exibe informações do produto
//   print("Produto: ${produto.nome} - R\$${produto.preco}");
  
//   // Executa a função anônima para ajuste de preço
//   produto.ajustarPreco();
// }

// // Este exercício reforça o uso de classes auxiliares e parâmetros nomeados.
// // Demonstra a composição de um objeto complexo (Produto) e a execução de uma função anônima (ajustarPreco).

// void main3() {
//   // Cria um Cliente utilizando parâmetros nomeados
//   var cliente = Cliente(
//     "Cliente B", 
//     endereco: "Rua dos Clientes, 789", 
//     atualizarEndereco: () {
//       print("Endereço do Cliente B atualizado");
//     }
//   );
  
//   // Cria objetos auxiliares para o Produto
//   var tipo = TipoProduto("Eletrodoméstico", exibirTipo: () {
//     print("Tipo: Eletrodoméstico");
//   });
//   var categoria = CategoriaProduto("Cozinha", "Produtos para cozinha", exibirCategoria: () {
//     print("Categoria: Cozinha");
//   });
//   var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
//     print("Unidade atualizada");
//   });
//   var fornecedor = Fornecedor(
//     "Fornecedor Y", 
//     "22.222.222/0001-22", 
//     "Av. dos Fornecedores, 101", 
//     acaoFornecedor: () {
//       print("Fornecedor Y acionado");
//     }
//   );
  
//   // Cria um Produto com função anônima para ajustar o preço
//   var produto = Produto(
//     "Geladeira", 
//     2500.00, 
//     tipo, 
//     categoria, 
//     unidadeMedida: unidade, 
//     fornecedor: fornecedor, 
//     ajustarPreco: () {
//       print("Preço da Geladeira ajustado!");
//     }
//   );
  
//   // Cria o PedidoVenda com função anônima para concluir a venda
//   var pedidoVenda = PedidoVenda(
//     cliente, 
//     produto, 
//     1, 
//     concluirVenda: () {
//       print("Venda concluída com sucesso!");
//     }
//   );
  
//   // Exibe detalhes do pedido
//   print("Pedido de Venda:");
//   print("Cliente: ${pedidoVenda.cliente.nome}");
//   print("Produto: ${pedidoVenda.produto.nome}");
//   print("Quantidade: ${pedidoVenda.quantidade}");
  
//   // Executa a função de conclusão da venda
//   pedidoVenda.concluirVenda();
// }

// //Neste exercício, o aluno compõe objetos aninhados (Cliente e Produto) dentro de um Pedido de Venda.
// //A função concluirVenda simula o processamento final do pedido.
// void main4() {
//   // Cria um Fornecedor
//   var fornecedor = Fornecedor(
//     "Fornecedor Z", 
//     "33.333.333/0001-33", 
//     "Rua dos Fornecedores, 202", 
//     acaoFornecedor: () {
//       print("Fornecedor Z acionado");
//     }
//   );
  
//   // Cria objetos auxiliares para o Produto
//   var tipo = TipoProduto("Móvel", exibirTipo: () {
//     print("Tipo: Móvel");
//   });
//   var categoria = CategoriaProduto("Escritório", "Móveis para escritório", exibirCategoria: () {
//     print("Categoria: Escritório");
//   });
//   var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
//     print("Unidade atualizada");
//   });
  
//   // Cria um Produto com função anônima para ajustar o preço
//   var produto = Produto(
//     "Mesa de Escritório", 
//     800.00, 
//     tipo, 
//     categoria, 
//     unidadeMedida: unidade, 
//     fornecedor: fornecedor, 
//     ajustarPreco: () {
//       print("Preço da Mesa de Escritório ajustado!");
//     }
//   );
  
//   // Cria um PedidoCompra com função anônima para realizar a compra
//   var pedidoCompra = PedidoCompra(
//     fornecedor, 
//     produto, 
//     5, 
//     realizarCompra: () {
//       print("Pedido de Compra realizado com sucesso!");
//     }
//   );
  
//   // Cria um objeto PedidoCompraFrete com função anônima para calcular o frete
//   var pedidoCompraFrete = PedidoCompraFrete(
//     pedidoCompra, 
//     150.00, 
//     DateTime.now(), 
//     calcularFrete: () {
//       print("Frete calculado com base na distância e quantidade.");
//     }
//   );
  
//   // Cria um objeto PedidoCompraPagamento com função anônima para realizar o pagamento
//   var pedidoCompraPagamento = PedidoCompraPagamento(
//     pedidoCompra, 
//     4500.00, 
//     DateTime.now(), 
//     realizarPagamentoCompra: () {
//       print("Pagamento do Pedido de Compra efetuado!");
//     }
//   );
  
//   // Exibe informações
//   print("Pedido de Compra com Frete:");
//   print("Fornecedor: ${pedidoCompra.fornecedor.nome}");
//   print("Produto: ${pedidoCompra.produto.nome}");
//   print("Quantidade: ${pedidoCompra.quantidade}");
  
//   // Executa as funções anônimas
//   pedidoCompraFrete.calcularFrete();
//   pedidoCompraPagamento.realizarPagamentoCompra();
// }

// // Este exercício é mais avançado e envolve a criação de objetos aninhados (PedidoCompra, PedidoCompraFrete e PedidoCompraPagamento)
// // com funções anônimas para  calcular frete e processar pagamento.
// // Cada função anônima é executada para simular ações reais no fluxo de compra.

// void main() {
//   // Cria o objeto Cliente com endereço detalhado
//   var cliente = Cliente(
//     "Cliente C", 
//     "Rua dos Clientes, 987", 
//     atualizarEndereco: () {
//       print("Endereço do Cliente C atualizado!");
//     }
//   );
  
//   // Cria os objetos auxiliares para o Produto
//   var tipo = TipoProduto("Eletrônico", exibirTipo: () {
//     print("Tipo: Eletrônico");
//   });
//   var categoria = CategoriaProduto("Áudio", "Aparelhos de som", exibirCategoria: () {
//     print("Categoria: Áudio");
//   });
//   var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
//     print("Unidade atualizada");
//   });
//   var fornecedor = Fornecedor(
//     "Fornecedor W", 
//     "44.444.444/0001-44", 
//     "Av. dos Fornecedores, 303", 
//     acaoFornecedor: () {
//       print("Fornecedor W acionado");
//     }
//   );
  
//   // Cria um Produto com ajuste de preço
//   var produto = Produto(
//     "Caixa de Som", 
//     299.99, 
//     tipo, 
//     categoria, 
//     unidade: unidade, 
//     fornecedor: fornecedor, 
//     ajustarPreco: () {
//       print("Preço da Caixa de Som ajustado!");
//     }
//   );
  
//   // Cria um PedidoVenda com conclusão de venda
//   var pedidoVenda = PedidoVenda(
//     cliente, 
//     produto, 
//     2, 
//     concluirVenda: () {
//       print("Venda concluída com sucesso!");
//     }
//   );
  
//   // Cria um PedidoVendaEntrega com função anônima para organizar a entrega
//   var pedidoVendaEntrega = PedidoVendaEntrega(
//     pedidoVenda, 
//     DateTime.now().add(Duration(days: 2)), 
//     "Rua da Entrega, 321", 
//     organizarEntrega: () {
//       print("Entrega organizada para o Pedido de Venda!");
//     }
//   );
  
//   // Exibe informações do cenário
//   print("Pedido de Venda:");
//   print("Cliente: ${pedidoVenda.cliente.nome}");
//   print("Produto: ${pedidoVenda.produto.nome}");
//   print("Quantidade: ${pedidoVenda.quantidade}");
//   print("Data de Entrega: ${pedidoVendaEntrega.dataEntrega}");
//   print("Endereço de Entrega: ${pedidoVendaEntrega.enderecoEntrega}");

