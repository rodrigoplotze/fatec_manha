import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../view/util.dart';

class LoginController {
  //
  // CRIAR CONTA
  // Adiciona a conta de um novo usuário no serviço
  // Firebase Authentication
  //
  criarConta(context, nome, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: senha,
    )
        .then((resultado) {
      //Sucesso

      //
      // Armazenar o NOME do usuário e o UID em uma coleção
      // no banco de dados Firestore
      //
      FirebaseFirestore.instance.collection('usuarios')
        .add(
          {
            "nome": nome,
            "uid": resultado.user!.uid,
          },
      );

      sucesso(context, 'Usuário criado com sucesso!');
      Navigator.pop(context);
    }).catchError((e) {
      //Erro

      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // LOGIN
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: senha,
    )
        .then((resultado) {
      sucesso(context, 'Usuário autenticado com sucesso!');
      Navigator.pushNamed(context, 'principal');
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-credential':
          erro(context, 'Email e/ou senha inválida.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do email é inválido.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // ESQUECEU A SENHA
  //
  esqueceuSenha(context, String email) {
    if (email.isNotEmpty) {
      FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );

      sucesso(context, 'Email enviado com sucesso!');
    } else {
      erro(context, 'Favor preencher o campo email.');
    }
  }

  //
  // LOGOUT
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
    return FirebaseAuth.instance.currentUser!.uid;
  }
}
