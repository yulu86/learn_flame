import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class MySprite extends Component {
  MySprite({
    required this.image,
    required this.srcSize,
    required this.to,
    this.row = 0,
    this.stepTime = 0.1,
    required this.size,
    required this.position,
  });

  final Image image;
  final Vector2 srcSize;
  final int row;
  final double stepTime;
  final int to;
  final Vector2 size;
  final Vector2 position;

  @override
  Future<void>? onLoad() {
    final spriteSheet = SpriteSheet(
      image: image,
      srcSize: srcSize,
    );

    final spriteAnimation = spriteSheet.createAnimation(
      row: row,
      stepTime: stepTime,
      to: to,
    );

    final spriteAnimationComponent = SpriteAnimationComponent(
      animation: spriteAnimation,
      size: size,
      position: position,
    );

    add(spriteAnimationComponent);

    return super.onLoad();
  }
}
