import 'dart:convert';

import 'package:flutter_dev_book_hands_on_ver2/app_state.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data.dart';

part 'app_notifier_provider.g.dart';

@riverpod
class AppNotifier extends _$AppNotifier {
  @override
  AppState build() {
    return const Input();
  }

  void reset() {
    state = const Input();
  }

  Future<void> convert(String sentence) async {
    state = const Loading();

    final url = Uri.parse('https://labs.goo.ne.jp/api/hiragana');
    final headers = {'Content-Type': 'application/json'};
    final request = Request(
      appId: const String.fromEnvironment('appId'),
      sentence: sentence,
    );
    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(request.toJson()),
    );
    final result = Response.fromJson(
      jsonDecode(response.body) as Map<String, Object?>,
    );

    state = Data(result.converted);
  }
}
