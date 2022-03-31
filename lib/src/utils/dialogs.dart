import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Dialogs {
  static Future<void> alert(
    BuildContext context, {
    String? titele,
    String? description,
    String okText = "OK",
    bool dissmisible = true,
  }) async {
    return showCupertinoDialog(
      context: context,
      builder: (_) => WillPopScope(
        onWillPop: () async => dissmisible,
        child: CupertinoAlertDialog(
          title: titele != null ? Text(titele) : null,
          content: description != null ? Text(description) : null,
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: Text(okText),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class ProgressDialog {
  static Future<void> show(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) => WillPopScope(
        onWillPop: () async => false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: Colors.white30,
          child: const CupertinoActivityIndicator(
            radius: 15,
          ),
        ),
      ),
    );
  }
}
