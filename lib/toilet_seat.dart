import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class ToiletSeat extends Scrap {
  ToiletSeat() : super("Toilet seat", Icons.tv);
  @override
  collide() {
    if (home == "friend") {
      enemies.removeAt(0);
      enemies.removeAt(0);
      enemies.removeAt(0);
    } else if (home == "enemy") {
      friends.removeAt(0);
      friends.removeAt(0);
      friends.removeAt(0);
    }
  }
}
