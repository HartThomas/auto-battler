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
      child: const Center(
        child: Text("Victory!"),
      ),
    );
  }
}
