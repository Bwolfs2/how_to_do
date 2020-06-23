class ProdutoModel {
  final int id;
  final String nome;
  final String descricao;
  final String preco;
  final String imagem;
  final int lojaId;

  ProdutoModel({
    this.lojaId,
    this.id,
    this.nome,
    this.descricao,
    this.preco,
    this.imagem,
  });
}
