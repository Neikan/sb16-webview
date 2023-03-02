// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Project imports:
import 'package:app_web_view/config/app_platform.dart';

// import 'package:app_web_view/consts/common.dart';

WebViewController _getController(String link) => WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(Colors.white)
  ..loadRequest(Uri.parse(link));

Widget webView(String link) => AppPlatform.isMobile
    ? WebViewWidget(controller: _getController(link))
    : HyperLink(link: link);

class HyperLink extends StatelessWidget {
  final String link;

  const HyperLink({
    super.key,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Text(
          link,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.green,
          ),
        ),
      ),
      onTap: () async {
        final uri = Uri.parse(link);

        if (await canLaunchUrl(uri)) {
          await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
        }
      },
    );
  }
}
