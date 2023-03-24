import 'package:auto_battler/scrap.dart';

var friends = List.filled(
    5, Scrap("empty", "assets/blank.png", "friend", "empty"),
    growable: true);
var friendsCopy = List.filled(
    5, Scrap("empty", "assets/blank.png", "friend", "empty"),
    growable: true);
var enemies = List.filled(
    5, Scrap("empty", "assets/blank.png", "enemy", "empty"),
    growable: true);
var enemiesCopy = List.filled(
    5, Scrap("empty", "assets/blank.png", "enemy", "empty"),
    growable: true);
final shop = List.filled(8, Scrap("empty", "assets/blank.png", "shop", "empty"),
    growable: false);

void friendsReset() {
  friends = List.filled(
      5, Scrap("empty", "assets/blank.png", "friend", "empty"),
      growable: true);
  friendsCopy = List.filled(
      5, Scrap("empty", "assets/blank.png", "friend", "empty"),
      growable: true);
}

void enemiesReset() {
  enemies = List.filled(
      5, Scrap("empty", "assets/blank.png", "friend", "empty"),
      growable: true);
  enemiesCopy = List.filled(
      5, Scrap("empty", "assets/blank.png", "friend", "empty"),
      growable: true);
}
