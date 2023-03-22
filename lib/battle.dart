import 'package:auto_battler/fork.dart';
import 'package:auto_battler/looroll.dart';
import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/toilet_seat.dart';
import 'package:auto_battler/trampoline.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class Battle {
  Battle();

  final scrapObject = {
    "Loo roll": LooRoll,
    "Trampoline": Trampoline,
    "Toilet seat": ToiletSeat,
    "Fork": Fork
  };

  void collision() {
    if (friends.isNotEmpty && enemies.isNotEmpty) {
      if (friends[0].scrapName == "Loo roll" ||
          enemies[0].scrapName == "Loo roll") {
        friends.removeAt(0);
        enemies.removeAt(0);
        print("LSKDHJFLSKDHJF");
      } else if (friends[0].scrapName == "Trampoline" &&
          enemies[0].scrapName == "Trampoline") {
        enemies.removeAt(0);
        friends.removeAt(0);
      } else if (friends[0].scrapName == "Trampoline") {
        enemies[0].collide("friends");
      } else if (enemies[0].scrapName == "Trampoline") {
        friends[0].collide("enemies");
      } else {
        friends[0].collide();
        enemies[0].collide();
      }
    }
  }
}
