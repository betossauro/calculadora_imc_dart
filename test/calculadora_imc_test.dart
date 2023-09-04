import 'package:calculadora_imc/calculo_imc.dart' as imc;
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(imc.IMC().calculoIMC(125.6, 1.91), 34.43);
  });
}
