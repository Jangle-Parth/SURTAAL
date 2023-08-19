import 'package:flutter/material.dart';

class YourLib extends StatelessWidget {
  const YourLib({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          Text('YourLib', style: TextStyle(fontSize: 40, color: Colors.yellow)),
    );
  }
}
