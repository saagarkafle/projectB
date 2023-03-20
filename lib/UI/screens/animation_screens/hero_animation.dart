// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';

// class HeroAnimation extends StatelessWidget {
//   const HeroAnimation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Hero')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             ListTile(
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 60),
//                 title: const Hero(
//                     tag: 'tag-3',
//                     child:
//                         Text('Lionel Messi', style: TextStyle(fontSize: 24))),
//                 subtitle: const Hero(
//                     tag: 'tag-4',
//                     child: Text('Footballer', style: TextStyle(fontSize: 16))),
//                 trailing: Hero(
//                   tag: 'tag-2',
//                   transitionOnUserGestures: true,
//                   child: SizedBox(
//                     height: 60,
//                     width: 60,
//                     child: Image.asset(
//                       "assets/messi.jpg",
//                       height: 200.0,
//                       width: 160,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 onTap: () {
//                   Modular.to.pushNamed('/heroSecond');
//                 }),
//             ListTile(
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 60),
//                 title: const Text('Lionel Scaloni',
//                     style: TextStyle(fontSize: 24)),
//                 subtitle: const Text('Manager', style: TextStyle(fontSize: 16)),
//                 trailing: Hero(
//                   tag: 'tag-1',
//                   child: SizedBox(
//                     height: 60,
//                     width: 60,
//                     child: Image.asset(
//                       "assets/scaloni.jpg",
//                       height: 200.0,
//                       width: 160,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 onTap: () {
//                   Modular.to.pushNamed('/heroSecond');
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
