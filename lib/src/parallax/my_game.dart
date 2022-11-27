import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:learning_flame/src/sprites/my_sprites.dart';

class MyGame extends FlameGame {
  static const String description = '''
    Shows the simplest way to use a fullscreen `ParallaxComponent`.
  ''';

  final _imageNames = [
    ParallaxImageData('parallax/bg.png'),
    ParallaxImageData('parallax/mountain-far.png'),
    ParallaxImageData('parallax/mountains.png'),
    ParallaxImageData('parallax/trees.png'),
    ParallaxImageData('parallax/foreground-trees.png'),
  ];

  late Image _frogImage;

  @override
  Future<void> onLoad() async {
    final parallax = await loadParallaxComponent(
      _imageNames,
      baseVelocity: Vector2(10, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
    add(parallax);

    _frogImage = await images.load('frog_run.png');
    add(
      MySprite(
        image: _frogImage,
        srcSize: Vector2(32, 32),
        row: 0,
        to: 11,
        stepTime: 0.1,
        size: Vector2(64, 64),
        position: Vector2(150, 680),
      ),
    );
  }
}
