import 'dart:math';

import 'package:auto_battler/battle_page.dart';
import 'package:auto_battler/fork.dart';
import 'package:auto_battler/looroll.dart';
import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/toilet_seat.dart';
import 'package:auto_battler/trampoline.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const HomePage(title: "Homepage"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _search() {
    setState(() {
      for (var i = 0; i < shop.length; i++) {
        final randomNumber = Random().nextInt(4);
        if (randomNumber == 0) {
          shop[i] = Fork("friends");
        } else if (randomNumber == 1) {
          shop[i] = ToiletSeat("friends");
        } else if (randomNumber == 2) {
          shop[i] = Trampoline("friends");
        } else if (randomNumber == 3) {
          shop[i] = LooRoll("friends");
        }
      }
    });
    // write a function to refresh shop variable
  }

  _createOpponent() {
    for (var i = 0; i < enemies.length; i++) {
      final randomNumber = Random().nextInt(4);
      if (randomNumber == 0) {
        enemies[i] = Fork("enemies");
      } else if (randomNumber == 1) {
        enemies[i] = ToiletSeat("enemies");
      } else if (randomNumber == 2) {
        enemies[i] = Trampoline("enemies");
      } else if (randomNumber == 3) {
        enemies[i] = LooRoll("enemies");
      }
    }
  }

  _pile() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = friends.length - 1; i >= 0; i--) {
      listings.add(Padding(
          padding: const EdgeInsets.all(5),
          child: DragTarget<Scrap>(
            builder: (context, candidateData, rejectedData) => Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.yellow),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Icon(
                friends[i].icon,
              ),
            ),
            onAccept: (data) {
              friends[i] = data;
            },
          )));
    }
    return listings;
  }

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
        _createOpponent();
        Navigator.pushNamed(context, "/battlepage");
      },
      child: const Text('Toss'),
    ));
    return listings;
  }

  _shop() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < shop.length; i++) {
      listings.add(
        Padding(
            padding: const EdgeInsets.all(5),
            child: Draggable<Scrap>(
              data: shop[i],
              feedback: Icon(shop[i].icon),
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black45),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Tooltip(
                  verticalOffset: -75,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
                  message: shop[i].tooltipMessage,
                  child: Icon(shop[i].icon),
                ),
              ),
            )),
      );
    }
    return listings;
  }

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
                    ),
                    child: Column(children: _pile())),
                Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Column(children: _info(context)))
              ],
            )),
        Wrap(
          children: _shop(),
        ),
        ElevatedButton(
            onPressed: _search, child: const Text("Search the scrapyard"))
      ]),
    );
  }
}
