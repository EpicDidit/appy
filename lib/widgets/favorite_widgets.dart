//import 'package:appy/providers/counter.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
// import 'package:gap/gap.dart';
// import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

class Favoritewidget extends StatefulWidget {
  const Favoritewidget({super.key});

  @override
  State<Favoritewidget> createState() => _FavoritewidgetState();
}

class _FavoritewidgetState extends State<Favoritewidget> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              child: Image.asset("assets/images/confused.jpg"),
            ),
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

//     return SafeArea(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               context.watch<Couter>().number.toString(),
//               style: TextStyle(fontSize: 40.0),
//             ),
//             const Gap(30),
//             ElevatedButton.icon(
//               onPressed: () {
//                 context.read<Couter>().increment();
//                 // setState(()=> num = num +2 );
//                 // setState(() {
//                 //   num = num +2;
//                 // });
//               },
//               icon: const Icon(Icons.add),
//               label: const Text("Increase"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
  }
}
