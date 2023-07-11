import 'package:flutter/material.dart';

void main() {
  runApp(ColorChanger());
}

class ColorChanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      color: Colors.white,
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color screenColor = Colors.white;

  void changeColor(Color color) {
    setState(() {
      screenColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body: Container(
        color: screenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(80)),
                ColorButton(
                  color: Colors.black,
                  onPressed: () {
                    changeColor(Colors.black);
                  },
                  buttonText: 'Black',
                ),
                SizedBox(
                  width: 30,
                ),
                ColorButton(
                  color: Colors.red,
                  onPressed: () {
                    changeColor(Colors.red);
                  },
                  buttonText: 'Red',
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(80)),
                ColorButton(
                  color: Colors.blue,
                  onPressed: () {
                    changeColor(Colors.blue);
                  },
                  buttonText: 'Blue',
                ),
                SizedBox(
                  width: 30,
                ),
                ColorButton(
                  color: Colors.green,
                  onPressed: () {
                    changeColor(Colors.green);
                  },
                  buttonText: 'Green',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String buttonText;

  const ColorButton({
    required this.color,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: Colors.white,
        padding: EdgeInsets.all(16.0),
      ),
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
