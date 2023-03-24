import 'package:flutter/material.dart';

class Scrap {
  String scrapName;
  String image;
  String? home;
  String? tooltipMessage;

  Scrap(this.scrapName, this.image, [this.home, this.tooltipMessage]);

  getScrapName() {
    return scrapName;
  }

  collide([String? home]) {
    print({this, home});
  }
}
