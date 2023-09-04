class IMC {
  double calculoIMC(double peso, double altura) {
    var resultado = (peso / (altura * altura)).toStringAsFixed(2);
    return double.parse(resultado);
  }

  void resultados(resultado){
    switch (resultado) {
      case < 16:
        resultado = "Seu IMC é menor do que 16, está em magreza grave.";
        break;
      case < 17:
        resultado = "Seu IMC está entre 16-17, está em magreza moderada.";
        break;
      case < 18.5:
        resultado = "Seu IMC está entre 17-18.5, está em magreza leve.";
        break;
      case < 25:
        resultado = "Seu IMC está entre 18.5-25, está saudável.";
        break;
      case < 30:
        resultado = "Seu IMC está entre 25-30, está em sobrepeso.";
        break;
      case < 35:
        resultado = "Seu IMC está entre 30-35, está em obesidade grau I.";
        break;
      case < 40:
        resultado = "Seu IMC está entre 35-40, está em obesidade grau II (severa).";
        break;
      default:
        resultado = "Seu IMC é maior ou igual à 40, está em obesidade grau III (mórbida).";
        break;
    }
    print(resultado);
  }
}
