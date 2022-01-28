//import 'package:format_number/format_number.dart' as format_number;
import 'package:intl/intl.dart';

final oCcy = NumberFormat("#,##0.00");

void main() {
  double num = 6;
  String number = oCcy.format(num).toString();
  int index = number.lastIndexOf(".");
  number = number.replaceAll(",", ".");
  number = number.replaceRange(index, index + 1, ",");
  print(number);
}
