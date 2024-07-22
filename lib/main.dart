import 'package:flutter/material.dart';
import 'package:flutter_dev_book_hands_on_ver2/app_notifier_provider.dart';
import 'package:flutter_dev_book_hands_on_ver2/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'convert_result.dart';
import 'input_form.dart';
import 'loading_indicator.dart';

/// Riverpodを利用するために
/// アプリのルートウィジェットをProviderScopeでラップする
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiragana Converter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

/// ホーム画面をConsumerWidgetで作成
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Hiragana Converter'),
      ),
      body: switch (appState) {
        Loading() => const LoadingIndicator(),
        Input() => const InputForm(),
        Data(sentence: final sentence) => ConvertResult(sentence: sentence),
      },
    );
  }
}
