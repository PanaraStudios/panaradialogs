# Panara Dialogs
![Pub Version](https://img.shields.io/pub/v/panara_dialogs?style=plastic) ![GitHub](https://img.shields.io/github/license/PanaraStudios/panaradialogs?style=plastic) 

Panara Dialogs is a UI Kit for Dialog comes with 2 types of dialogs - Info Dialog & Confirmation Dialog both comes with 4 different variants as shown in below screenshots. with 6 different animations.


## Preview

### PanaraInfoDialog

![success](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/info_success.png)![normal](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/info_normal.png)![warning](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/info_warning.png)![error](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/info_error.png)

### PanaraConfirmDialog
![success](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/confirm_success.png)![normal](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/confirm_normal.png)![warning](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/confirm_warning.png)![error](https://raw.githubusercontent.com/PanaraStudios/panaradialogs/master/preview_images/confirm_error.png)

  

## Getting started
Add the dependency in  `pubspec.yaml`:

```yaml

dependencies:
    panara_dialogs: ^0.0.8

```

## Usage

Then you just have to import the package with

```dart

import 'package:panara_dialogs/panara_dialogs.dart';

```


Here is how you can use `PanaraInfoDialog` in your flutter project.
```dart

PanaraInfoDialog.show(
    context, 
    title: "Hello",
    message: "This is the PanaraInfoDialog",
    buttonText: "Okay",
    onTapDismiss: () {
        Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.normal,
    barrierDismissible: false, // optional parameter (default is true)
);

```

### Properties of `PanaraInfoDialog`
| Property | Type | value |
|--|--|--|
| title | `String` | any string value  |
| message | `String` | any string value  |
| buttonText | `String` | any string value  |
| onTapDismiss | `void Function()` | function to decide what will happen onTap  |
| panaraDialogType | `PanaraDialogType` | `success`, `normal`, `warning`, `error`  |

---
And Here is how you can use `PanaraConfirmDialog` in your flutter project.
```dart

PanaraConfirmDialog.show(
    context, 
    title: "Hello",
    message: "This is the PanaraConfirmDialog",
    confirmButtonText: "Confirm",
    cancelButtonText: "Cancel",
    onTapCancel: () {
        Navigator.pop(context);
    }
    onTapConfirm: () {
        Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.normal,
    barrierDismissible: false, // optional parameter (default is true)
);

```

### Properties of `PanaraConfirmDialog`
| Property | Type | value |
|--|--|--|
| title | `String` | any string value  |
| message | `String` | any string value  |
| confirmButtonText | `String` | any string value  |
| cancelButtonText | `String` | any string value  |
| onTapConfirm | `void Function()` | function to decide what will happen onTap confirm |
| onTapCancel | `void Function()` | function to decide what will happen onTap cancel |
| panaraDialogType | `PanaraDialogType` | `success`, `normal`, `warning`, `error`  |


### Animations for Both Dialogs
| method | Animation |
|--|--|
| `showAnimatedFromLeft()` | slide animation from left |
| `showAnimatedFromRight()` | slide animation from right |
| `showAnimatedFromTop()` | slide animation from top |
| `showAnimatedFromBottom()` | slide animation from bottom |
| `showAnimatedGrow()` | grow animation from center |
| `showAnimatedShrink()` | shrink animation from center |

  

## Feedback

Please feel free to  [give me any feedback](https://github.com/PanaraStudios/panaradialogs/issues)  helping support this plugin !