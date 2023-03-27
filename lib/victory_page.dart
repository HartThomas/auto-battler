import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class VictoryPage extends StatefulWidget {
  const VictoryPage({super.key});

  @override
  State<VictoryPage> createState() => _VictoryPageState();
}

class _VictoryPageState extends State<VictoryPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      vsync: this,
      behaviour: BubblesBehaviour(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Victory!"),
          ElevatedButton(
              onPressed: () {
                friendsReset();
                resetActions();
                win();
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Try again"))
        ],
      ),
    );
  }
}
