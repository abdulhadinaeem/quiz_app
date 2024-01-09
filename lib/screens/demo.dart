import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int countOne = 1;
  int countTwo = 2;

  int countThree = 3;

  int countFour = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Builder(
              builder: (context) {
                print('rebuild 1');
                return Expanded(
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '$countOne',
                            style: context.textTheme.displayMedium,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                countOne++;
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                print('rebuild 2');
                return Expanded(
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '$countTwo',
                            style: context.textTheme.displayMedium,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                countTwo++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                print('rebuild 3');
                return Expanded(
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '$countThree',
                            style: context.textTheme.displayMedium,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                countThree++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                print('rebuild 4');
                return Expanded(
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '$countFour',
                            style: context.textTheme.displayMedium,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                countFour++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Widget5()
          ],
        ),
      ),
    );
  }
}

class Widget5 extends StatelessWidget {
  Widget5({Key? key}) : super(key: key);
  int countFive = 5;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      // key: rebuildKey,
      builder: (context, setState) {
        print('rebuild 5');
        return Expanded(
          child: Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$countFive',
                    style: context.textTheme.displayMedium,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        countFive++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
