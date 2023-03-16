import 'package:auto_battler/battle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const BattlePage(title: 'Battle Page'),
    );
  }
}

class BattlePage extends StatefulWidget {
  const BattlePage({super.key, required this.title});

  final String title;

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  var battle = Battle();
  void _collision() {
    setState(() {
      battle.collision();
    });
  }

  _getFriends() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < battle.friends.length; i++) {
      listings.add(Icon(battle.friends[i].icon));
    }
    return listings;
  }

  _getEnemies() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < battle.enemies.length; i++) {
      listings.add(Icon(battle.enemies[i].icon));
    }
    return listings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _getFriends(),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end, children: _getEnemies())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _collision,
        tooltip: 'Collide',
        child: const Icon(Icons.add),
      ),
    );
  }
}
