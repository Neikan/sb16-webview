part of '../screen_home.dart';

class _UiFooter extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onClear;
  final void Function(String) onLoad;

  const _UiFooter({
    required this.controller,
    required this.onClear,
    required this.onLoad,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          UiFieldText(
            controller: controller,
            onClear: onClear,
            onLoad: onLoad,
          ),
          const UiAppPlatform(),
        ],
      ),
    );
  }
}
