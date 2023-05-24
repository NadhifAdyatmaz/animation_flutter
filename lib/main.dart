import 'package:flutter/material.dart';

import 'pages/animation1.dart';
import 'pages/animation2.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 196, 242, 255),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations Menu"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Animations 1'),
              textColor: Color.fromARGB(255, 40, 61, 63),
              subtitle: const Text('Fide-in Animation'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              iconColor: Color.fromARGB(255, 40, 61, 63),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstAnimation(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 40, 61, 63), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Animations 2'),
              textColor: Color.fromARGB(255, 40, 61, 63),
              subtitle: const Text('Shape-shifting Animation'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              iconColor: Color.fromARGB(255, 40, 61, 63),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondAnimation(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 40, 61, 63), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // ListTile(
            //   title: const Text('Animations 3'),
            //   subtitle: const Text('Animation curves'),
            //   trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const AnimatedCurveDemo(),
            //       ),
            //     );
            //   },
            //   shape: RoundedRectangleBorder(
            //     side: const BorderSide(
            //         color: Color.fromARGB(255, 139, 143, 140), width: 3),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
