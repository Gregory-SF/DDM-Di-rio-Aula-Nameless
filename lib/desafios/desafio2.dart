import 'biblioteca.dart';

void main() {


  // var pais = Pais("nome", exibirPais: {print("${nome}")});
  // var estado = Estado("nome", pais: pais, mudarPais: mudarPais);
  // var cidade = Cidade("nome", estado, alterarEstado: alterarEstado);
  // var endereco = Endereco(11, rua: "rua", cidade: cidade);
  TipoProduto("descricao", exibirTipo: exibirTipo);
  var categoria = CategoriaProduto(nome, descricao, exibirCategoria: exibirCategoria)
  var unidadeMedida = UnidadeMedida("nome", simbolo: simbolo, atualizarUnidade: atualizarUnidade)
  var fornecedor = Fornecedor("nome", "cnpj", "endereco", acaoFornecedor: acaoFornecedor);
  var produto = Produto("nome", 12, categopria, unidadeMedida: unidadeMedida, fornecedor: fornecedor, ajustarPreco: ajustarPreco)
  var pedidoCompra = PedidoCompra(fornecedor, produto, 12, realizarCompra: realizarCompra);
}