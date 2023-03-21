import 'package:auto_battler/battle_page.dart';
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  _pile() {
    List<Widget> listings = List.empty(growable: true);
    for (var i = 0; i < friends.length; i++) {
      listings.add(Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.yellow),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Icon(
              friends[i].icon,
            ),
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
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black45),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Icon(shop[i].icon),
            )),
      );
    }
    return listings;
  }

  search() {
    // write a function to refresh shop variable
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
                      right: 80,
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
            onPressed: search(), child: const Text("Search the scrapyard"))
      ]),
    );
  }
}
