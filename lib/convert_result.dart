import 'package:flutter/material.dart';
import 'package:flutter_dev_book_hands_on_ver2/app_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConvertResult extends ConsumerWidget {
  const ConvertResult({super.key, required this.sentence});

  final String sentence;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(appNotifierProvider.notifier);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(sentence),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: notifier.reset,
            child: const Text('再入力'),
          )
        ],
      ),
    );
  }
}
