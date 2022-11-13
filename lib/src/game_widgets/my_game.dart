import 'package:flame/components.dart';
import 'package:flame/game.dart';

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await add(MySpriteComponent());
  }
}

class MySpriteComponent extends SpriteComponent {
  MySpriteComponent() : super(size: Vector2.all(80), anchor: Anchor.center);

  @override
  Future<void>? onLoad() async {
    sprite = await Sprite.load('crate.png');
  }

  @override
  void onGameResize(Vector2 size) {
    position = size / 2;
    super.onGameResize(size);
  }
}
