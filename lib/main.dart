import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:learning_flame/src/game_widgets/my_game.dart' as game_widgets;

void main() {
  final game_widgets.MyGame myGame = game_widgets.MyGame();
  runApp(GameWidget(game: myGame));
}
