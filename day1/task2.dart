import 'dart:io';

void main() {
  var sum = 0;
  final totals = [];
  final file = File('${Directory.current.path}/day1/test.txt');
  final values = file.readAsStringSync();
  final input = values.split('\n');
  for (var i = 0; i < input.length; i++) {
    if (input[i].isNotEmpty) {
      sum += int.parse(input[i]);
    } else {
      totals.add(sum);
      sum = 0;
    }
    if (i == input.length - 1) {
      totals.add(sum);
      sum = 0;
    }
  }
  totals.sort();
  final topThree = totals.sublist(totals.length - 3);
  final total = topThree.reduce((value, element) => value + element);
  print(total);
}
