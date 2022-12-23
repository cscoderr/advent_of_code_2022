import 'dart:io';

void main() {
  final input = File('${Directory.current.path}/day2/test.txt');
  final values = input.readAsStringSync();
  final datas = values.split('\n');
  final scores = [];
  final x = 1;
  final y = 2;
  final z = 3;
  final lose = 0;
  final draw = 3;
  final win = 6;
  for (var data in datas) {
    if (data.substring(0, 1) == 'A' && data.substring(1).trim() == 'Y') {
      final total = y + win;
      scores.add(total);
    } else if (data.substring(0, 1) == 'A' && data.substring(1).trim() == 'X') {
      final total = x + draw;
      scores.add(total);
    } else if (data.substring(0, 1) == 'A' && data.substring(1).trim() == 'Z') {
      final total = z + lose;
      scores.add(total);
    } else if (data.substring(0, 1) == 'B' && data.substring(1).trim() == 'Y') {
      final total = y + draw;
      scores.add(total);
    } else if (data.substring(0, 1) == 'B' && data.substring(1).trim() == 'X') {
      final total = x + lose;
      scores.add(total);
    } else if (data.substring(0, 1) == 'B' && data.substring(1).trim() == 'Z') {
      final total = z + win;
      scores.add(total);
    } else if (data.substring(0, 1) == 'C' && data.substring(1).trim() == 'Y') {
      final total = y + lose;
      scores.add(total);
    } else if (data.substring(0, 1) == 'C' && data.substring(1).trim() == 'X') {
      final total = x + win;
      scores.add(total);
    } else if (data.substring(0, 1) == 'C' && data.substring(1).trim() == 'Z') {
      final total = z + draw;
      scores.add(total);
    }
  }
  final sum = scores.reduce((value, element) => value + element);
  print(sum);
}
