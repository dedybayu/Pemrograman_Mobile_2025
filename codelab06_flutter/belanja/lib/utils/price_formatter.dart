import 'package:intl/intl.dart';

class PriceFormatter {
  /// Format integer ke Rupiah, misal 5000 -> Rp 5.000
  static String format(int price) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(price);
  }
}