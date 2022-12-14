import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:learning_flame/src/game_widgets/my_game.dart' as game_widgets;
import 'package:learning_flame/src/router/my_game.dart' as router;
import 'package:learning_flame/src/flame_game/my_game.dart' as flutter_game;
import 'package:learning_flame/src/overlays/my_game.dart' as overlays_game;
import 'package:learning_flame/src/sprites/my_game.dart' as sprites_my_game;
import 'package:learning_flame/src/parallax/my_game.dart' as parallax_game;
import 'package:learning_flame/src/collision_detection/collision_detection.dart'
    as collision_game;

void main() {
  runApp(const MyGame());
}

class MyGame extends StatefulWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  // final FlameGame _myGame = game_widgets.MyGame();
  // final FlameGame _myGame = router.MyGame();
  // final FlameGame _myGame = flutter_game.MyGame();
  // final FlameGame _myGame = overlays_game.MyGame();
  // final FlameGame _myGame = sprites_my_game.MyGame();
  final FlameGame _myGame = parallax_game.MyGame();
  // final FlameGame _myGame = collision_game.MyGame();

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _myGame);
  }
}
