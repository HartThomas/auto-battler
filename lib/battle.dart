import 'package:auto_battler/scrap.dart';
import 'package:flutter/material.dart';

class Battle {
  var friends;
  var enemies;
  int counter = 0;

  Battle() {
    friends = [
      Scrap("bogroll", Icons.soap),
      Scrap("junk", Icons.tune),
      Scrap("toilet seat", Icons.tv),
      Scrap("fork", Icons.fork_left),
      Scrap("trampoline", Icons.wifi)
    ];
    enemies = [
      Scrap("bogroll", Icons.soap),
      Scrap("junk", Icons.tune),
      Scrap("toilet seat", Icons.tv),
      Scrap("fork", Icons.fork_left),
      Scrap("trampoline", Icons.wifi)
    ];
  }

  void collision() {
    if (friends.length != 0 && enemies.length != 0) {
      friends.removeAt(0);
      enemies.removeAt(0);
      counter++;
    }
  }
}
