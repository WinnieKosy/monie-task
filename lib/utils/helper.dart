 import 'package:intl/intl.dart';

currencyFormat(String amount) {
  return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(double.parse(amount));
}