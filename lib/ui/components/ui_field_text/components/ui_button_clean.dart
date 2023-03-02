part of '../ui_field_text.dart';

class _UiButtonClean extends StatelessWidget {
  final bool isValue;
  final VoidCallback onPressed;

  const _UiButtonClean({
    required this.isValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return isValue
        ? IconButton(
            icon: const Icon(
              Icons.clear,
              color: Colors.grey,
            ),
            onPressed: onPressed,
          )
        : const SizedBox();
  }
}
