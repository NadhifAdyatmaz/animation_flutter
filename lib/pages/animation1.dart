import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';

class FirstAnimation extends StatefulWidget {
  const FirstAnimation({Key? key}) : super(key: key);

  @override
  State<FirstAnimation> createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 40, 61, 63)),
          ),
          title: const Text("Animation 1"),
        ),
        body: ListView(children: <Widget>[
          Image.network(owlUrl),
          ElevatedButton(
            child: const Text('Show Detail'),
            onPressed: () => setState(() {
              opacity = 1;
            }),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: opacity,
            child: Column(
              children: const [
                Text(
                  'Type: Owl',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Age: 39',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Employment: None',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ]));
  }
}
