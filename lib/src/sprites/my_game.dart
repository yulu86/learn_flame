import 'dart:ui';

import 'package:flame/game.dart';
import 'package:learning_flame/src/sprites/my_sprites.dart';

class MyGame extends FlameGame {
  late Image _ghostImage;
  late Image _attackImage;
  late Image _walkImage;

  @override
  Future<void>? onLoad() async {
    _ghostImage = await images.load('ghost_spritesheet.png');
    _attackImage = await images.load('_Attack.png');
    _walkImage = await images.load('_CrouchWalk.png');

    addAll([
      // vampire
      MySprite(
        image: _ghostImage,
        srcSize: Vector2(16, 18),
        row: 0,
        to: 7,
        size: Vector2(60.0, 67.5),
        position: Vector2(150, 100),
      ),
      // ghost
      MySprite(
        image: _ghostImage,
        srcSize: Vector2(16, 18),
        row: 1,
        to: 7,
        size: Vector2(60.0, 67.5),
        position: Vector2(150, 220),
      ),
      MySprite(
        image: _walkImage,
        srcSize: Vector2(120, 80),
        row: 0,
        to: 7,
        size: Vector2(120, 80),
        position: Vector2(150, 400),
      ),
      MySprite(
        image: _attackImage,
        srcSize: Vector2(120, 80),
        row: 0,
        to: 3,
        stepTime: 0.16,
        size: Vector2(120, 80),
        position: Vector2(150, 480),
      ),
    ]);
    return super.onLoad();
  }
}
