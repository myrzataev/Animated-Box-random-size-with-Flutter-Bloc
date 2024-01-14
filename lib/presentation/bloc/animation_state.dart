import 'dart:ui';

abstract class AnimationState {}

class InitialState extends AnimationState {}

class SuccessState extends AnimationState {
  final int height;
  final int width;
  final Color color;
  SuccessState({required this.color, required this.height, required this.width
   });
}
class ErrorState extends AnimationState{
  final String errorText;
  ErrorState({required this.errorText});
}
