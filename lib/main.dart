import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_check/feature/internet_checker.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: InternetChecker(),
      ),
    ),
  );
}
