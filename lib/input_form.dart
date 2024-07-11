import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Paddingウィジェット
        /// TextFieldウィジェットが横一杯に広がらないように余白を設ける
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: '文章を入力してください',
              )),
        ),

        /// SizedBoxウィジェット
        /// TextFieldウィジェットとElevatedButtonウィジェットの間に余白を設ける
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('変換'),
        )
      ],
    );
  }
}
