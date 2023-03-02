// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_web_view/ui/styles/text.dart';

part 'components/ui_button_clean.dart';
part 'components/ui_button_load.dart';
part 'components/ui_suffix.dart';

class UiFieldText extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onClear;
  final void Function(String) onLoad;

  const UiFieldText({
    super.key,
    required this.controller,
    required this.onClear,
    required this.onLoad,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.green,
      decoration: _getInputDecoration(),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 0.0,
      ),
      constraints: const BoxConstraints(
        maxHeight: 56.0,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green,
          width: 2.0,
        ),
      ),
      labelText: 'Url',
      labelStyle: getBrandTextStyle(color: Colors.green),
      suffixIcon: _UiSuffix(
        controller: controller,
        onClear: onClear,
        onSearch: onLoad,
      ),
    );
  }
}
