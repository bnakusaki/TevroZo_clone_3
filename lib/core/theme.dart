import 'package:flutter/material.dart';

ThemeData get theme => ThemeData(
      //TODO: fix fonts.
      fontFamily: 'SteradianTRIAL',
      appBarTheme: const AppBarTheme(),
      // ignore: use_full_hex_values_for_flutter_colors
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xffc9f66f),
        primary: const Color(0xffffffff),
        secondary: const Color(0xff333333),
        tertiary: const Color(0xffc9f66f),
      ),
      useMaterial3: true,
    );
