import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/tarefa.dart';
import '../view/util.dart';
import 'login_controller.dart';

class TarefaController{

  void adicionar(context, Tarefa t){
    FirebaseFirestore.instance.collection('tarefas')
      .add(t.toJson())
      .then((value) => sucesso(context,'Tarefa adicionada com sucesso!'))
      .catchError((e) => erro(context,'Não foi possível adicionar a tarefa.'))
      .whenComplete(() => Navigator.pop(context));
  }

  //
  // Recuperar todas as tarefas do usuário que está logado
  //
  listar(){
    return FirebaseFirestore.instance.collection('tarefas')
      .where('uid', isEqualTo: LoginController().idUsuario());
  }

  //
  // ATUALIZAR
  //
  void atualizar(context,id,Tarefa t){    
    FirebaseFirestore.instance.collection('tarefas')
    .doc(id)
    .update(t.toJson())
    .then((value) => sucesso(context,'Tarefa atualizada com sucesso!'))
    .catchError((e) => erro(context,'Não foi possível atualizar a tarefa.'))
    .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  // 
  void excluir(context,id){    
    FirebaseFirestore.instance.collection('tarefas')
    .doc(id)
    .delete()
    .then((value) => sucesso(context,'Tarefa excluída com sucesso!'))
    .catchError((e) => erro(context,'Não foi possível excluir a tarefa.'));
  }

}