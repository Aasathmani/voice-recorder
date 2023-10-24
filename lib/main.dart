import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'audio_record.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AudioRecorder(
        onStop: (path) {
          if (kDebugMode) {
            print('Recorded file path: $path');
          }
        },
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;
//   const MyHomePage({super.key, required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: SizedBox(
//           width: 200,
//           child: TextButton(
//             style: TextButton.styleFrom(
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//               ),
//               textStyle: const TextStyle(fontWeight: FontWeight.bold),
//               foregroundColor: Colors.white,
//               backgroundColor: Colors.blueAccent, // Text Color
//             ),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Icon(Icons.mic),
//                   Padding(
//                     padding: EdgeInsets.only(left: 12.0),
//                     child: Text("Audio Record"),
//                   )
//                 ]),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => AudioRecorder(
//                             onStop: (path) {
//                               if (kDebugMode) {
//                                 print('Recorded file path: $path');
//                               }
//                               // setState(() {
//                               // audioPath = path;
//                               // showPlayer = true;
//                               // });
//                             },
//                           )));
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
