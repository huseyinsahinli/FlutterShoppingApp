import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';

import '../padding/app_padding.dart';

mixin ShowSheetMixin {
  static Future<T?> showCustomSheet<T>(
      {required BuildContext context, required Widget child}) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(flex: 2),
                SizedBox(
                  width: context.screenWidth * 0.3,
                  child: const Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            child,
          ],
        );
      },
    );
  }
}
