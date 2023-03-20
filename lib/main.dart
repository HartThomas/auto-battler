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
      initialRoute: "/",
      routes: {
        "/battlepage": (context) => const BattlePage(title: "Battle Page")
      },
      title: 'Auto-battler',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _pile = List.filled(
      5,
      Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.yellow),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          )));

  _info(context) {
    List<Widget> listings = List.filled(
        3,
        Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.red),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            )),
        growable: true);
    listings.add(ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/battlepage");
      },
      child: const Text('Toss'),
    ));
    return listings;
  }

  final _shop = List.filled(
    8,
    Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.black45),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
        )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                      left: 75,
                      right: 80,
                    ),
                    child: Column(children: _pile)),
                Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Column(children: _info(context)))
              ],
            )),
        Wrap(
          children: _shop,
        )
      ]),
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
    for (var i = battle.friends.length - 1; i >= 0; i--) {
      listings.add(Icon(
        battle.friends[i].icon,
        color: Colors.white,
        size: 120,
      ));
    }
    return listings;
  }

  _getEnemies() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < battle.enemies.length; i++) {
      listings.add(Icon(
        battle.enemies[i].icon,
        color: Colors.white,
        size: 120,
      ));
    }
    return listings;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Battle Page",
        home: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/versus.png',
                  ),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            floatingActionButton: FloatingActionButton(
              onPressed: _collision,
              tooltip: 'Collide',
              child: const Icon(Icons.add),
            ),
            body: Row(
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
          ),
        ));
  }
}
