part of '../screen_home.dart';

class _UiLinkContent extends StatelessWidget {
  final String link;

  const _UiLinkContent({
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: link.isNotEmpty ? webView(link) : const SizedBox(),
    );
  }
}
