import 'package:intl/intl.dart';

class PriceFormatter {
  static String format(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }
}