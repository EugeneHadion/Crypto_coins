import 'package:crypto_coins_list/theme/theme.dart';
import 'package:flutter/material.dart';

import '../router/router.dart';

class CryptoCurrenciesApp extends StatelessWidget {
  const CryptoCurrenciesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Crypto Currecies List', theme: darkTheme, routes: routes);
  }
}