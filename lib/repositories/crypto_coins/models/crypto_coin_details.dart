import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinDetail extends CryptoCoin {
  const CryptoCoinDetail({
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24hours,
    required this.low24hours,
    required super.name,
    required super.priceInUSD,
    required super.imageUrl,
  });

  final String toSymbol;
  final DateTime lastUpdate;
  final double hight24hours;
  final double low24hours;
}
