import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';

import '';

class AnimationControllerModel extends FlareControls{
  final String animationName;
  ActorAnimation _animation;
  double speed;
  double _time = 0;
  AnimationControllerModel(this.animationName, {this.speed = 1});


  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    _animation = artboard.getAnimation(animationName);
    play("Hair Animation");
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (_animation == null) {
      return false;
    }
    if (_animation.isLooping) {
      _time %= _animation.duration;
    }
    _animation.apply(_time, artboard, 1.0);
    _time += elapsed * speed;
    // Stop advancing if animation is done and we're not looping.
    return _animation.isLooping || _time < _animation.duration;
  }


  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }

}