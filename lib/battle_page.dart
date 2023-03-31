import 'package:animated_background/animated_background.dart';
import 'package:auto_battler/battle.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BattlePage extends StatefulWidget {
  const BattlePage({super.key, required this.title});

  final String title;

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage>
    with SingleTickerProviderStateMixin {
  var battle = Battle();
  void _collision() {
    setState(() {
      battle.collision();
      if (enemies.isEmpty) {
        Navigator.pushNamed(context, "/victorypage");
      } else if (friends.isEmpty) {
        Navigator.pushNamed(context, "/loserpage");
      }
    });
  }

  _getFriends() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = friends.length - 1; i >= 0; i--) {
      listings.add(Image(
        image: AssetImage(friends[i].image),
        height: 80,
      ));
    }
    return listings;
  }

  _getEnemies() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < enemies.length; i++) {
      listings.add(Image(
        image: AssetImage(enemies[i].image),
        height: 80,
      ));
    }
    return listings;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Battle Page",
        home: AnimatedBackground(
          vsync: this,
          behaviour:
              RacingLinesBehaviour(direction: LineDirection.Btt, numLines: 50),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              floatingActionButton: FloatingActionButton(
                onPressed: _collision,
                tooltip: 'Collide',
                child: const Icon(Icons.add),
              ),
              body: CustomPaint(
                foregroundPainter: BackgroundPainter(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _getFriends(),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: _getEnemies())
                  ],
                ),
              )),
        ));
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paintOutside = Paint()
      ..strokeWidth = 30
      ..color = Colors.orange;

    Paint paintMiddle = Paint()
      ..strokeWidth = 10
      ..color = Colors.red;

    canvas.drawLine(Offset(0, height), Offset(width, 0), paintOutside);
    canvas.drawLine(Offset(0, height), Offset(width, 0), paintMiddle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
