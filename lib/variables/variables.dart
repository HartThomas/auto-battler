import 'package:auto_battler/scrap.dart';
import 'package:flutter/material.dart';

final friends =
    List.filled(5, Scrap("empty", Icons.launch, "friend"), growable: false);
final enemies =
    List.filled(5, Scrap("empty", Icons.launch, "enemy"), growable: false);
final shop =
    List.filled(8, Scrap("empty", Icons.wifi_sharp, "shop"), growable: false);


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