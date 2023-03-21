import 'package:auto_battler/looroll.dart';
import 'package:auto_battler/scrap.dart';
import 'package:flutter/material.dart';

class Battle {
  var friends;
  var enemies;

  Battle();

  void collision() {
    if (friends.length != 0 && enemies.length != 0) {
      if (friends[0].scrapName == "Loo roll" ||
          enemies[0].scrapName == "Loo roll") {
        friends.removeAt(0);
        enemies.removeAt(0);
        print("LSKDHJFLSKDHJF");
      } else {
        friends[0].collide();
        enemies[0].collide();
      }
    }
  }
}
