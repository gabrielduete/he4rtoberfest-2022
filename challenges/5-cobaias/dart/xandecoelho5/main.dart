import 'dart:io';

main() {
  var n = int.parse(stdin.readLineSync()!);
  Map<String, int> mapCobaias = {
    'C': 0,
    'R': 0,
    'S': 0,
  };

  for (int i = 0; i < n; ++i) {
    var linha = stdin.readLineSync()!.split(' ');
    int quantidade = int.parse(linha[0]);
    String cobaia = linha[1];
    mapCobaias.update(cobaia, (value) => value + quantidade);
  }

  int totalCobaias = mapCobaias.values.fold(0, (prev, curr) => prev + curr);
  int coelhos = mapCobaias['C']!;
  int ratos = mapCobaias['R']!;
  int sapos = mapCobaias['S']!;

  print('''
Total: $totalCobaias cobaias
Total de coelhos: $coelhos
Total de ratos: $ratos
Total de sapos: $sapos
Percentual de coelhos: ${calcularPercentual(coelhos, totalCobaias)} %
Percentual de ratos: ${calcularPercentual(ratos, totalCobaias)} %
Percentual de sapos: ${calcularPercentual(sapos, totalCobaias)} %
  ''');
}

String calcularPercentual(int cobaia, int totalCobaias) {
  return (cobaia / totalCobaias * 100).toStringAsFixed(2);
}
