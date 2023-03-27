import 'package:auto_battler/fork.dart';
import 'package:auto_battler/looroll.dart';
import 'package:auto_battler/toilet_seat.dart';
import 'package:auto_battler/trampoline.dart';
import 'package:auto_battler/variables/variables.dart';

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
        friendsCopy.removeAt(0);
        enemiesCopy.removeAt(0);
      } else if (friends[0].scrapName == "Trampoline" &&
          enemies[0].scrapName == "Trampoline") {
        enemiesCopy.removeAt(0);
        friendsCopy.removeAt(0);
      } else if (friends[0].scrapName == "Trampoline") {
        enemies[0].collide("friend");
        friendsCopy.removeAt(0);
      } else if (enemies[0].scrapName == "Trampoline") {
        friends[0].collide("enemy");
        enemiesCopy.removeAt(0);
      } else {
        print({enemies, friends});
        enemies[0].collide("enemy");
        print({enemies, friends});
        friends[0].collide("friend");
      }
      friends = [...friendsCopy];
      enemies = [...enemiesCopy];
    }
  }
}
