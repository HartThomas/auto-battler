import 'package:flutter/material.dart';

class Scrap {
  String scrapName;
  IconData icon;
  String? home;
  String? tooltipMessage;

  Scrap(this.scrapName, this.icon, [this.home, this.tooltipMessage]);

  getScrapName() {
    return scrapName;
  }

  collide([String? home]) {
    var no = {collide: Function};
    print(home);
  }
}
