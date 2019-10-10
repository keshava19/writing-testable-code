main(List<String> arguments) {
  var parts = double.parse(arguments[0]);

  var service = double.parse(arguments[1]);

  var discount = double.parse(arguments[2]);

  double total = parts + service - discount;

  print('Total Price: $total');
}
