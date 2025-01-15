import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hancod_theme/colors.dart';

class AppTheme {
  const AppTheme._();

  static const double textFieldBorderRadius = 25;

  static final lightTheme = ThemeData(useMaterial3: false);

  static final darkTheme = ThemeData(useMaterial3: false);

  static Brightness get currentSystemBrightness =>
      PlatformDispatcher.instance.platformBrightness;

  static void setStatusBarAndNavigationBarColors() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

//  InputDecoration(
//                     filled: true,
//                     fillColor: Colors.grey[100],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
  static InputDecoration customInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
    filled: true,
    fillColor: AppColors.secondaryBackgroundColor,
    prefixIcon: const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      // child: Icon(Icons.search, size: 25, color: AppColors.primaryColor),
    ),
    prefixIconConstraints: const BoxConstraints(
      minWidth: 20,
      minHeight: 20,
    ),
    hintStyle: const TextStyle(color: AppColors.secondaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );
}
