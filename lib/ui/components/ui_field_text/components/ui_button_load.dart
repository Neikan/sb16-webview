part of '../ui_field_text.dart';

class _UiButtonSearch extends StatelessWidget {
  final VoidCallback? onPressed;

  const _UiButtonSearch({
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          onPressed != null ? Colors.green : Colors.green.shade300,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.green.shade700,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(16.0),
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(80, 56),
        ),
      ),
      child: Text(
        'LOAD',
        style: getBaseTextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
