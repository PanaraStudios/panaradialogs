import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panara Dialogs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Panara Dialogs Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Text(
              "PanaraInfoDialog & It's Variants",
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraInfoDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Success.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.success,
                );
              },
              child: const Text("Show Success Info"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraInfoDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Normal.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.normal,
                );
              },
              child: const Text("Show Normal Info"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraInfoDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Warning.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.warning,
                );
              },
              child: const Text("Show Warning Info"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraInfoDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Error.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.error,
                );
              },
              child: const Text("Show Error Info"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "PanaraConfirmDialog & It's Variants",
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Success.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.success,
                );
              },
              child: const Text("Show Success Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Normal.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.normal,
                );
              },
              child: const Text("Show Normal Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Warning.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.warning,
                );
              },
              child: const Text("Show Warning Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Error.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.error,
                );
              },
              child: const Text("Show Error Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
