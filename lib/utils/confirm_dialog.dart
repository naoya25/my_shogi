import 'package:flutter/cupertino.dart';

void showConfirmDialog({
  required BuildContext context,
  required String message,
  required VoidCallback onYes,
  required VoidCallback onNo,
}) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: const Text('確認'),
        content: Text(message),
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text('Yes'),
            onPressed: () {
              Navigator.of(context).pop();
              onYes();
            },
          ),
          CupertinoDialogAction(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
              onNo();
            },
          ),
        ],
      );
    },
  );
}
