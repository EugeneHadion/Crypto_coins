import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('Crypto Currencies List'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: (_cryptoCoinList == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
            padding: const EdgeInsets.only(top: 16),
              itemCount: _cryptoCoinList!.length,
              separatorBuilder: (context, index) => const Divider(
                color: Color.fromARGB(255, 88, 83, 51),
              ),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinList![i];
                return  CryptoCoinTile(coin: coin);

              },
            ),
    
    );
  }

  Future<void> _loadCryptoCoins() async {
     _cryptoCoinList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}
