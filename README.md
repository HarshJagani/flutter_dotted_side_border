# dotted_side_border

A simple Flutter widget that lets you place dotted borders on any side of another widget.



## ✨ **Features**

- Add dotted borders to just the side you want — top, bottom, left, or right
- Customize the color, stroke width, and spacing of the dots
- Optional padding between your widget and the dotted border
- Lightweight, plug-and-play, and easy to drop into any layout




## 📦 **Installation**

Add the package to your `pubspec.yaml`:

yaml
dependencies:
dotted_side_border: ^1.0.0


Then install it:

bash
flutter pub get



## 🚀 **Usage**

dart
import 'package:dotted_side_border/dotted_side_border.dart';

DottedSideBorder(
color: Colors.blue,
strokeWidth: 2.0,
gap: 5.0,
padding: 10.0,
position: DottedLinePosition.bottom,
child: Text('Hello World'),
)



## ⚙️ **Parameters**


| Parameter                | Type                   | Description                                      | Default                      |
|--------------------------|------------------------|--------------------------------------------------|------------------------------|
| `child` *(required)*     | `Widget`               | The widget you want to wrap with a dotted border | -                            |
| `color`                  | `Color`                | Color of the dots                                | `Colors.black`               |
| `strokeWidth`            | `double`               | Size/thickness of each dot                       | `1.0`                        |
| `gap`                    | `double`               | Space between each dot                           | `3.0`                        |
| `padding`                | `double?`              | Distance between the child and the dotted line   | `5.0`                        |
| `position`               | `DottedLinePosition`   | Which side to draw the dotted line on            | `DottedLinePosition.bottom`  |



## 📱 **Example**

A complete example app is available in the [`example/main.dart`] directory.


## 📄 **License**

This project is available under the MIT License. See the [LICENSE](LICENSE) file for more details.
