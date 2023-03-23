import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class Trampoline extends Scrap {
  static const tooltip =
      "The Trampoline bounces the opposing scrap back at the opponent";

  Trampoline([String? home]) : super("Trampoline", Icons.tune, home, tooltip);
  // @override
  // collide() {
  //   if (home == "friend") {
  //     enemies.removeAt(0);
  //     enemies.removeAt(0);
  //     enemies.removeAt(0);
  //   } else if (home == "enemy") {
  //     friends.removeAt(0);
  //     friends.removeAt(0);
  //     friends.removeAt(0);
  //   }
  // }
}
