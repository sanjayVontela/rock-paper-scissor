import "dart:math";

String randomizer() {
  List list = ['rock', 'paper', 'scissor'];
  final _random = new Random();
  var element = list[_random.nextInt(list.length)];

  return element;
}
