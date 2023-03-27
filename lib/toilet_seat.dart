import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';

class ToiletSeat extends Scrap {
  static const tooltip = "The Toilet Seat destroys the next 3 opposing scrap";

  ToiletSeat([String? home])
      : super("Toilet seat", "assets/toiletseat.png", home, tooltip);
  @override
  collide([String? home]) {
    if (home == "friend") {
      enemiesCopy.removeAt(0);
      if (enemiesCopy.isNotEmpty) {
        enemiesCopy.removeAt(0);
      }
      if (enemiesCopy.isNotEmpty) {
        enemiesCopy.removeAt(0);
      }
    } else if (home == "enemy") {
      friendsCopy.removeAt(0);
      if (friendsCopy.isNotEmpty) {
        friendsCopy.removeAt(0);
      }
      if (friendsCopy.isNotEmpty) {
        friendsCopy.removeAt(0);
      }
    }
  }
}
