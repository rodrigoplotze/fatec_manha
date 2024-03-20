class Contato {
  //atributos
  final String nome;
  final String email;

  //construtor
  Contato(this.nome, this.email);

  //geração de dados
  static List<Contato> preencher() {
    List<Contato> lista = [];

    lista.add(Contato('João da Silva', 'joao@email.com'));
    lista.add(Contato('José Antônio', 'jose@email.com'));
    lista.add(Contato('Ana Maria', 'ana@email.com'));
    lista.add(Contato('Carla Fernanda', 'carla@email.com'));

    return lista;
  }
}
