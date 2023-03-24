import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class Fork extends Scrap {
  static const tooltip = "The Fork destroys the next 2 opposing scrap";

  Fork([String? home]) : super("Fork", Icons.fork_left, home, tooltip);

  @override
  collide([String? home]) {
    print({"fork", friends[0].home, enemies, home});
    if (home == "friend") {
      enemiesCopy.removeAt(0);
      if (enemiesCopy.isNotEmpty) {
        enemiesCopy.removeAt(0);
      }
    } else if (home == "enemy") {
      friendsCopy.removeAt(0);
      if (friendsCopy.isNotEmpty) {
        friendsCopy.removeAt(0);
      }
    }
  }
}
