import 'package:auto_battler/scrap.dart';
import 'package:flutter/material.dart';

var friends =
    List.filled(5, Scrap("empty", "", "friend", "empty"), growable: true);
var friendsCopy =
    List.filled(5, Scrap("empty", "", "friend", "empty"), growable: true);
var enemies =
    List.filled(5, Scrap("empty", "", "enemy", "empty"), growable: true);
final enemiesCopy =
    List.filled(5, Scrap("empty", "", "enemy", "empty"), growable: true);
final shop =
    List.filled(8, Scrap("empty", "", "shop", "empty"), growable: false);

void friendsReset() {
  friends =
      List.filled(5, Scrap("empty", "", "friend", "empty"), growable: true);
  friendsCopy =
      List.filled(5, Scrap("empty", "", "friend", "empty"), growable: true);
}

  //  friends = [
  //     LooRoll(),
  //     Scrap("junk", Icons.tune),
  //     Scrap("toilet seat", Icons.tv),
  //     Scrap("fork", Icons.fork_left),
  //     Scrap("trampoline", Icons.wifi)
  //   ];
  //   enemies = [
  //     LooRoll(),
  //     Scrap("junk", Icons.tune),
  //     Scrap("toilet seat", Icons.tv),
  //     Scrap("fork", Icons.fork_left),
  //     Scrap("trampoline", Icons.wifi)
  //   ];