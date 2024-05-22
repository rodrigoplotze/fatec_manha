class Tarefa{

  //Especificação das "chaves" do documento
  final String uid;
  final String titulo;
  final String descricao;

  //Construtor
  Tarefa(this.uid,this.titulo,this.descricao);

  //
  // toJson = converte um OBJETO da linguagem DART
  //          em um JSON
  //
  Map<String,dynamic> toJson(){
    return <String,dynamic>{
      'uid' : uid,
      'titulo': titulo,
      'descricao': descricao,
    };
  }

  //
  // fromJson = converter um JSON em um OBJETO
  //            da linguagem DART
  //
  factory Tarefa.fromJson(Map<String,dynamic> dados){
    return Tarefa(
      dados['uid'],
      dados['titulo'],
      dados['descricao'],
    );
  }

}