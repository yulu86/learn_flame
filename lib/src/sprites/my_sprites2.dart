import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:learning_flame/src/sprites/my_game.dart';

class MySprites2 extends SpriteAnimationComponent with HasGameRef<MyGame> {
  MySprites2(Vector2 position) : super(position: position);

  @override
  Future<void>? onLoad() async {
    animation = await gameRef.loadSpriteAnimation(
      'ghost_spritesheet.png',
      SpriteAnimationData.sequenced(
        amount: 8,
        stepTime: 0.1,
        textureSize: Vector2(16, 18),
      ),
    );

    final hitboxPaint = BasicPalette.white.paint()
      ..style = PaintingStyle.stroke;

    final rectangleHitbox = RectangleHitbox.relative(
      Vector2(150, 540),
      parentSize: size,
    )..renderShape = true;

    add(rectangleHitbox);
    return super.onLoad();
  }
}
