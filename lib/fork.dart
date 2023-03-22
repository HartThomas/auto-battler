import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class Fork extends Scrap {
  Fork([String? home]) : super("Fork", Icons.fork_left, home);
  @override
  collide([String? home]) {
    if (home == "friend") {
      enemies.removeAt(0);
      enemies.removeAt(0);
    } else if (home == "enemy") {
      friends.removeAt(0);
      friends.removeAt(0);
    }
  }
}
