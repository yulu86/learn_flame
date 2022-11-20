import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    final spriteSheet = SpriteSheet(
      image: await images.load('ghost_spritesheet.png'),
      srcSize: Vector2(16, 18),
    );

    final vampireAnimation =
        spriteSheet.createAnimation(row: 0, stepTime: 0.1, to: 7);
    final ghostAnimation =
        spriteSheet.createAnimation(row: 1, stepTime: 0.1, to: 7);
    final ghostAnimationVariableStepTimes =
        spriteSheet.createAnimationWithVariableStepTimes(
      row: 1,
      to: 7,
      stepTimes: [0.1, 0.1, 0.3, 0.3, 0.5, 0.3, 0.1],
    );

    final spriteSize = Vector2(60.0, 67.5);

    final vampireComponent = SpriteAnimationComponent(
      animation: vampireAnimation,
      position: Vector2(150, 100),
      size: spriteSize,
    );

    final ghostComponent = SpriteAnimationComponent(
      animation: ghostAnimation,
      position: Vector2(150, 220),
      size: spriteSize,
    );

    final ghostAnimationVariableStepTimesComponent = SpriteAnimationComponent(
      animation: ghostAnimationVariableStepTimes,
      position: Vector2(150, 340),
      size: spriteSize,
    );

    add(vampireComponent);
    add(ghostComponent);
    add(ghostAnimationVariableStepTimesComponent);

    final vampireSpriteComponent = SpriteComponent(
      sprite: spriteSheet.getSprite(0, 0),
      position: Vector2(50, 100),
      size: spriteSize,
    );

    final ghostSpriteComponent = SpriteComponent(
      sprite: spriteSheet.getSprite(1, 0),
      size: spriteSize,
      position: Vector2(50, 220),
    );

    final ghostVariableSpriteComponent = SpriteComponent(
      sprite: spriteSheet.getSprite(1, 0),
      size: spriteSize,
      position: Vector2(50, 340),
    );

    add(vampireSpriteComponent);
    add(ghostSpriteComponent);
    add(ghostVariableSpriteComponent);
  }
}