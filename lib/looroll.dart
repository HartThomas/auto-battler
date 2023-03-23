import 'package:auto_battler/scrap.dart';
import 'package:flutter/material.dart';

class LooRoll extends Scrap {
  static const tooltip = "The Loo Roll nullifies the opposing scrap";

  LooRoll([String? home]) : super("Loo roll", Icons.soap, home, tooltip);
}
