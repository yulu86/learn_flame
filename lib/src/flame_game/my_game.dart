import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await add(MyCrate());
  }
}

class MyCrate extends SpriteComponent {
  MyCrate() : super(size: Vector2(100, 100), anchor: Anchor.center);

  @override
  Future<void>? onLoad() async {
    sprite = await Sprite.load('_Attack.png');
  }

  @override
  void onGameResize(Vector2 size) {
    position = size / 2;
    super.onGameResize(size);
  }
}
