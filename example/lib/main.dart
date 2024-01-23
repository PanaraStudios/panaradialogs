import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

void main() {
  runApp(const MyApp());
}

///
/// For more information read documentation at https://pub.dev/documentation/panara_dialogs/latest/
///

ValueNotifier<ThemeMode> _themeMode =
    ValueNotifier<ThemeMode>(ThemeMode.system);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _themeMode,
      builder: (context, value, child) => MaterialApp(
        title: 'Panara Dialogs Demo',
        themeMode: value,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Panara Dialogs Demo'),
      ),
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
        actions: [
          ValueListenableBuilder(
            valueListenable: _themeMode,
            builder: (context, value, child) => IconButton(
              onPressed: () {
                if (value == ThemeMode.system) {
                  _themeMode.value = ThemeMode.light;
                } else if (value == ThemeMode.light) {
                  _themeMode.value = ThemeMode.dark;
                } else {
                  _themeMode.value = ThemeMode.system;
                }
              },
              icon: Icon(
                value == ThemeMode.system
                    ? Icons.brightness_auto
                    : value == ThemeMode.light
                        ? Icons.brightness_high
                        : Icons.brightness_low,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                PanaraInfoDialog.showAnimatedGrow(
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
                PanaraInfoDialog.showAnimatedGrow(
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
                PanaraInfoDialog.showAnimatedGrow(
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
                PanaraConfirmDialog.showAnimatedGrow(
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
                PanaraConfirmDialog.showAnimatedGrow(
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
                PanaraConfirmDialog.showAnimatedGrow(
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
                PanaraConfirmDialog.showAnimatedGrow(
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
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
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
                  noImage: true,
                );
              },
              child: const Text("Show No Image Success Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
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
                  noImage: true,
                );
              },
              child: const Text("Show No Image Normal Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
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
                  noImage: true,
                );
              },
              child: const Text("Show No Image Warning Confirm"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
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
                  noImage: true,
                );
              },
              child: const Text("Show No Image Error Confirm"),
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
