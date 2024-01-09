import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCountDown extends StatefulWidget {
  const CustomCountDown(
      {super.key,
      required this.isSelected,
      required this.routeName,
      required this.onFinished});
  final bool isSelected;
  final String routeName;
  final Function()? onFinished;

  @override
  State<CustomCountDown> createState() => _CustomCountDownState();
}

class _CustomCountDownState extends State<CustomCountDown> {
  late Timer timer;
  int second = 10;
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          second--;
        });
      }

      if (second == 0) {
        timer.cancel();
        widget.onFinished!();
      }
      if (widget.isSelected == true) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        second.toString(),
        style: context.textTheme.displayLarge,
      ),
    );
  }
}
