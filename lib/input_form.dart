import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Paddingウィジェット
          /// TextFormFieldウィジェットが横一杯に広がらないように余白を設ける
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            /// TextFormFieldウィジェット
            /// validatorコールバックで文字の空チェックを行う
            child: TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: '文章を入力してください',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '文章が入力されていません';
                }
                return null;
              },
            ),
          ),

          /// SizedBoxウィジェット
          /// TextFormFieldウィジェットとElevatedButtonウィジェットの間に余白を設ける
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              /// Formウィジェット(StatefulWidget)のStateを取得
              final formState = _formKey.currentState!;

              /// validateメソッドが呼ばれると、validatorコールバックが呼ばれる
              formState.validate();
            },
            child: const Text('変換'),
          )
        ],
      ),
    );
  }
}
