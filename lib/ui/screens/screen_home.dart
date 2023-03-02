// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_web_view/ui/components/ui_app_platform.dart';
import 'package:app_web_view/ui/components/ui_field_text/ui_field_text.dart';

import 'package:app_web_view/ui/components/ui_webview/ui_webview.dart'
    if (dart.library.io) 'package:app_web_view/ui/components/ui_webview/ui_webview_non_web.dart'
    if (dart.library.html) 'package:app_web_view/ui/components/ui_webview/ui_webview_web.dart';

part 'components/ui_link_content.dart';
part 'components/ui_footer.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  TextEditingController controller = TextEditingController();
  String link = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _UiLinkContent(link: link),
            _UiFooter(
              controller: controller,
              onClear: _handleClear,
              onLoad: _handleLoad,
            ),
          ],
        ),
      ),
    );
  }

  void _handleLoad(String newLink) {
    setState(() {
      link = newLink;
    });
  }

  void _handleClear() {
    setState(() {
      link = '';
    });

    controller.clear();
  }
}
