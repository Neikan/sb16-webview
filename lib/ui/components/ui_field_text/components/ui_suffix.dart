part of '../ui_field_text.dart';

class _UiSuffix extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onClear;
  final void Function(String) onSearch;

  const _UiSuffix({
    required this.controller,
    required this.onClear,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _fieldListener(),
      builder: (
        BuildContext _,
        AsyncSnapshot<String> snapshot,
      ) {
        if (snapshot.hasError) {
          return const SizedBox();
        }

        final isValue = snapshot.data != null && snapshot.data!.isNotEmpty;

        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            _UiButtonClean(
              isValue: isValue,
              onPressed: onClear,
            ),
            _UiButtonSearch(
              onPressed: isValue ? () => onSearch(controller.text) : null,
            ),
          ],
        );
      },
    );
  }

  Stream<String> _fieldListener() async* {
    while (true) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 100));

      yield controller.value.text;
    }
  }
}
