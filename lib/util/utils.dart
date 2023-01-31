import 'package:flutter/material.dart';

class Utils {
  static void safeNavigate(
    String navigationPath,
    BuildContext context,
    Object? argumenents,
  ) {
    if (argumenents != null) {
      // debugPrint('Arguments Null Değillllllllll');
      Navigator.pushNamed(context, navigationPath, arguments: argumenents);
    } else {
      // debugPrint('Arguments Null NULLLLLLLLLLL');
      Navigator.pushNamed(context, navigationPath);
    }
  }

  static void widgetBindingCallback({required Function onTap}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onTap();
    });
  }
}
