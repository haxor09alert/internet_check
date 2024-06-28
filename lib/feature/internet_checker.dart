import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InternetChecker extends ConsumerWidget {
  const InternetChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Example of checking internet connection using a provider
    final isConnected = ref.watch(internetConnectionProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Checker'),
      ),
      body: Center(
        child: isConnected
            ? Text('Connected to the internet')
            : Text('No internet connection'),
      ),
    );
  }
}

// Example of a Riverpod provider to simulate internet connection state
final internetConnectionProvider = StateProvider<bool>((ref) => true);

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: InternetChecker(),
      ),
    ),
  );
}
