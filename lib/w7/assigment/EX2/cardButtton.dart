import 'package:flutter/material.dart';

class Cardbuttton extends StatefulWidget {
  const Cardbuttton({super.key});

  @override
  State<Cardbuttton> createState() => _CardbutttonState();
}

class _CardbutttonState extends State<Cardbuttton> {
  bool isfavorite = false;
  Color get iconColors => isfavorite ? Colors.red : Colors.grey;
  IconData get iconData => isfavorite ? Icons.favorite : Icons.favorite_border_outlined;

  void onfavorite() {
    setState(() {
      isfavorite = !isfavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "tittle",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text("description"),
              ],
            ),
          ),
          IconButton(
            onPressed: onfavorite,
            icon: Icon(iconData, color: iconColors),
          ),
        ],
      ),
    );
  }
}


// class Cardbuttton extends StatelessWidget {
//   const Cardbuttton({super.key, this.isfavorite = false});

//   final bool isfavorite;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
//       ),
//       padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             flex: 7,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "tittle",
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//                 Text("description"),
//               ],
//             ),
//           ),
//           IconButton(
//             onPressed: () => {},
//             icon: Icon(
//               Icons.favorite, 
//               color: isfavorite ? Colors.red : Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
