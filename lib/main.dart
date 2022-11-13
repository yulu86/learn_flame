import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:learning_flame/src/game_widgets/my_game.dart' as game_widgets;
import 'package:learning_flame/src/router/my_game.dart' as router;

void main() {
  // final FlameGame myGame = game_widgets.MyGame();
  final FlameGame myGame = router.MyGame();
  runApp(GameWidget(game: myGame));
}
