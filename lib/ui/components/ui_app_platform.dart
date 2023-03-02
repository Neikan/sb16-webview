// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_web_view/config/app_platform.dart';

class UiAppPlatform extends StatelessWidget {
  const UiAppPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        'App running on ${AppPlatform.platform.name.toUpperCase()}',
      ),
    );
  }
}
