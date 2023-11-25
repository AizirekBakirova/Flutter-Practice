// import 'package:flutter/material.dart';

// class ButtonContainers extends StatelessWidget {
//   const ButtonContainers({
//     super.key,
//     required this.text,
//     required this.image,
//   });
//   final String text;
//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 80,
//             height: 80,
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(50),
//                 child: Image.network(
//                   image,
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//           Text(
//             text,
//             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
//           ),
//           const SizedBox(
//             width: 20,
//           ),
//           Directionality(
//             textDirection: TextDirection.rtl,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.play_arrow,
//                   color: Colors.lightBlueAccent,
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }

//  SizedBox(
//           width: 80,
//           height: 80,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(50),
//             child: Image.network(
//               'https://res.cloudinary.com/worldpackers/image/upload/c_fill,f_auto,q_auto,w_1024/v1/guides/article_cover/hz4mzyf4iktjywa59nfp',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonContainers extends StatelessWidget {
  ButtonContainers({
    super.key,
    required this.text,
    required this.subtext,
    required this.image,
    required this.baskych,
  });
  final String text;
  final String subtext;
  final String image;
  final void Function() baskych;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: SizedBox(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 89, 156, 186),
          ),
        ),
        subtitle: Text(
          subtext,
          style: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 89, 156, 186),
          ),
        ),
        trailing: IconButton(
            onPressed: baskych,
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
              color: Color.fromARGB(255, 89, 156, 186),
            )),
      ),
    );
  }
}
