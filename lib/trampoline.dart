import 'package:auto_battler/scrap.dart';
import 'package:auto_battler/variables/variables.dart';
import 'package:flutter/material.dart';

class Trampoline extends Scrap {
  static const tooltip =
      "The Trampoline bounces the opposing scrap back at the opponent";

  Trampoline([String? home])
      : super("Trampoline", "assets/trampoline.png", home, tooltip);
}
