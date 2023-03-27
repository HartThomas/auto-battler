import 'package:animated_background/animated_background.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class LoserPage extends StatefulWidget {
  const LoserPage({super.key});

  @override
  State<LoserPage> createState() => _LoserPageState();
}

class _LoserPageState extends State<LoserPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      vsync: this,
      behaviour: RandomParticleBehaviour(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You lost, better luck next time!"),
          ElevatedButton(
              onPressed: () {
                loss();
                resetActions();
                friendsReset();
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Try again"))
        ],
      ),
    );
  }
}
