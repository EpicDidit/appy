import 'package:flutter/widgets.dart';

class Homewidget extends StatelessWidget {
  const Homewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}
