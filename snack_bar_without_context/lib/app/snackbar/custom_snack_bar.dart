import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

class CustomSnackbar extends SnackBar {
  CustomSnackbar._(Key key, String content, Color background,
      {IconData icon, SnackBarAction action})
      : super(
          backgroundColor: background,
          action: action,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 20,
                ),
                SizedBox(width: 10)
              ],
              Expanded(
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              if (action == null)
                InkWell(
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: asuka.hideCurrentSnackBar,
                )
            ],
          ),
        );

  factory CustomSnackbar.warning(String content, {Key key}) =>
      CustomSnackbar._(key, content, Color(0xffFC6D00), icon: Icons.warning);

  factory CustomSnackbar.error(String content, {Key key}) =>
      CustomSnackbar._(key, content, Color(0xffFC0000), icon: Icons.error);

  factory CustomSnackbar.message(String content,
          {Key key, SnackBarAction snackBarAction}) =>
      CustomSnackbar._(key, content, Color(0xff002923), action: snackBarAction);

  void call() => show();

  void show() => asuka.showSnackBar(this);
}
