import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';

class Fork extends Scrap {
  static const tooltip = "The Fork destroys the next 2 opposing scrap";

  Fork([String? home]) : super("Fork", "assets/fork.png", home, tooltip);

  @override
  collide([String? home]) {
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
