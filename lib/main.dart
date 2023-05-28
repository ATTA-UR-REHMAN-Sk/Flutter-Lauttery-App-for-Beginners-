import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LauteryApp());
}

class LauteryApp extends StatefulWidget {
  const LauteryApp({Key? key}) : super(key: key);

  @override
  State<LauteryApp> createState() => _LauteryAppState();
}

class _LauteryAppState extends State<LauteryApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Lattery App"))),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text('Lattery winning number is 4')),
                // Text(x > 5 ? 'x is greater than 5' : x.toString())
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: x == 4 ? 600 : 250,
                  width: 300,
                  decoration: BoxDecoration(
                    color: x == 4 ? Colors.teal : Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: x == 4
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("atta"),
                              const Icon(
                                Icons.done_all,
                                color: Colors.green,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Congratulations, You WON The Game, Your No Is $x",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("atta"),
                              const Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Better Luck Next Time, $x\nTry Again",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // x++;
            print(random.nextInt(10).toString());
            x = random.nextInt(6);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
