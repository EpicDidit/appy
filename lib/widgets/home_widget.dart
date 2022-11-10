// import 'dart:ui';

import 'package:flutter/material.dart';

class Homewidget extends StatelessWidget {
  const Homewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                ClipRRect(
                  child: Image.asset("assets/images/confused.jpg")),
            title: const Text(
              "Maryann Gold",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            subtitle: const Text("+234-903-0297-400"),
            trailing: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add"),
            ),
          );
        });
  }
}
