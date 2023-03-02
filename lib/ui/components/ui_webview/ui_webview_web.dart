// Dart imports:
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:math';
import 'dart:ui' as ui;

// Flutter imports:
import 'package:flutter/material.dart';

// ignore: unused_import

Widget webView(String link) => WebPlatformWebView(link: link);

class WebPlatformWebView extends StatelessWidget {
  final String link;

  const WebPlatformWebView({
    super.key,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    final id = Random().nextInt.toString();

    ui.platformViewRegistry.registerViewFactory(
      id,
      (int viewId) => IFrameElement()..src = link,
    );

    return HtmlElementView(viewType: id);
  }
}
