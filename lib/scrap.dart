import 'package:flutter/material.dart';

class Scrap {
  String scrapName;
  IconData icon;
  String? home;

  Scrap(this.scrapName, this.icon, [this.home]);

  getScrapName() {
    return scrapName;
  }

  collide([String? home]) {
    var no = {collide: Function};
    print(no);
  }
}
