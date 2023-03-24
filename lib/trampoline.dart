import 'package:auto_battler/scrap.dart';

class Trampoline extends Scrap {
  static const tooltip =
      "The Trampoline bounces the opposing scrap back at the opponent";

  Trampoline([String? home])
      : super("Trampoline", "assets/trampoline.png", home, tooltip);
}
