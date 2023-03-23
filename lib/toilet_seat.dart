import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class ToiletSeat extends Scrap {
  static const tooltip = "The Toilet Seat destroys the next 3 opposing scrap";

  ToiletSeat([String? home]) : super("Toilet seat", Icons.tv, home, tooltip);
  @override
  collide([String? home]) {
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
