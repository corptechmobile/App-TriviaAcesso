import 'package:flutter/material.dart';

enum Flavor {
  acessonovo,
  trivia,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.acessonovo:
        return 'Acesso Novo';
      case Flavor.trivia:
        return 'Trivia Acesso';
      default:
        return 'title';
    }
  }
   static String get semImagemTriste{
    switch (appFlavor) {
      case Flavor.acessonovo:
        return 'assets/Captura de tela 2023-09-19 195450.png';
      case Flavor.trivia:
        return 'assets/Captura de Tela 2024-03-21 às 15.14.04.png';
      default:
        return 'title';
    }
  }
  static String get imagemDeLegal{
      switch (appFlavor){
        case Flavor.acessonovo: 
        return 'http://acesso.novoatacarejo.com/resources/rede/img/novoImgBemVindo.jpg';
      case Flavor.trivia: 
      return 'http://acesso.novoatacarejo.com/resources/rede/img/novoImgBemVindo.jpg'; 
       default:
        return 'title';
      }
    
  }
   static String get semImagemTriste2{
     switch (appFlavor) {
      case Flavor.acessonovo:
        return 'assets/Captura de tela 2023-09-19 195450.png';
      case Flavor.trivia:
        return 'assets/Captura de Tela 2024-03-21 às 15.14.04.png';
      default:
        return 'title';
    }
   }
  static String get imageAssetPat {
    switch (appFlavor) {
      case Flavor.acessonovo:
        return 'assets/Captura de tela 2023-09-19 181258.png';
      case Flavor.trivia:
        return 'assets/trivia.png';
      default:
        return 'title';
    }
  }

  static String get imageComLogoBranca {
    switch (appFlavor) {
      case Flavor.trivia:
        return 'assets/logobranca.png';
      case Flavor.acessonovo:
        return 'assets/Captura de tela 2023-09-19 181800.png';
      default:
        return 'title';
    }
  }

}