import 'package:auto_battler/scrap.dart';

class LooRoll extends Scrap {
  static const tooltip = "The Loo Roll nullifies the opposing scrap";

  LooRoll([String? home])
      : super("Loo roll", "assets/looroll.png", home, tooltip);
}
