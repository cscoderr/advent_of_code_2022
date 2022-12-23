import 'dart:io';

void main() {
  var total = 0;
  final totals = [];
  final file = File('${Directory.current.path}/day1/test.txt');
  final values = file.readAsStringSync();
  final input = values.split('\n');
  for (var i = 0; i < input.length; i++) {
    if (input[i].isNotEmpty) {
      total += int.parse(input[i]);
    } else {
      totals.add(total);
      total = 0;
    }
    if (i == input.length - 1) {
      totals.add(total);
    }
  }
  final max =
      totals.reduce((value, element) => value > element ? value : element);
  print(max);
}
