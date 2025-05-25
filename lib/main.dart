import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: Center(
//       child: Text("Hello World",
//         style: TextStyle(
//           fontSize: 69.0,
//           color: Colors.blueAccent,
//           fontWeight: FontWeight.bold,
//           fontStyle: FontStyle.italic
//         ),),
//     ),
//   )
//   );
// }

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test satu'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pesawat tempur'),
              SizedBox(height: 20),
              Image.asset('assets/images/pesawat.jpeg'),
            ],
          )
        ),
      )
    );
  }
}