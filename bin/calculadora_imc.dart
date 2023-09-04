import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/calculo_imc.dart';
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  print('Calculadora de IMC');
  print('Informe seu nome: ');
  Pessoa pessoa = Pessoa("", 0.0, 0.0);
  try {
    String nome = stdin.readLineSync(encoding: utf8) ?? "";
    if (nome == "") {
      throw Exception("Nome inválido");
    } else {
      pessoa.setNome(nome);
    }
  } catch (e) {
    return print("Informe um nome válido!");
  }

  print('Informe seu peso utilizando casas decimais (0.00)');
  try {
    var valor = stdin.readLineSync(encoding: utf8);
    var peso = double.parse(valor ?? "0");
    if (peso != 0.0) {
      pessoa.setPeso(peso);
    }
  } catch (e) {
    return print("Informe um peso válido");
  }

  print('Informe sua altura utilizando casas decimais (0.00m)');
  try {
    var valor = stdin.readLineSync(encoding: utf8);
    var altura = double.parse(valor ?? "0");
    if (altura != 0.0) {
      pessoa.setAltura(altura);
    }
  } catch (e) {
    return print("Informe uma altura válida");
  }
  print('');
  IMC imc = IMC();
  print("${pessoa.getNome()}, o seu IMC é: ${imc.calculoIMC(pessoa.getPeso(), pessoa.getAltura())}");
  imc.resultados(imc.calculoIMC(pessoa.getPeso(), pessoa.getAltura()));
}
