import 'package:flame/components.dart';
import 'package:learning_flame/src/sprites/my_game.dart';

class MySprites2 extends SpriteAnimationComponent with HasGameRef<MyGame> {
  @override
  Future<void>? onLoad() async {
    final animation = await gameRef.loadSpriteAnimation(
      'ghost_spritesheet.png',
      SpriteAnimationData.sequenced(
        amount: 8,
        stepTime: 0.1,
        textureSize: Vector2(16, 18),
      ),
    );

    final spriteAnimationComponent = SpriteAnimationComponent(
      animation: animation,
      size: Vector2(60, 67.5),
      position: Vector2(150, 580),
      // angle: -30,
    );

    add(spriteAnimationComponent);
    return super.onLoad();
  }
}
