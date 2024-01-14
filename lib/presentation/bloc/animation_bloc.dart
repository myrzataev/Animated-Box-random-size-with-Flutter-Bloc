import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_with_block/presentation/bloc/animation_event.dart';
import 'package:practice_with_block/presentation/bloc/animation_state.dart';
import 'package:practice_with_block/repository/animation_repository.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  final AnimationRepository repository;
  AnimationBloc(this.repository) : super(InitialState()) {
    on<ChangeEvent>((event, emit) {
      try {
        int height = repository.changeHeight();
        int width = repository.changeWidth();
        Color color = repository.changeColor();

        emit(SuccessState(color: color, height: height, width: width));
      } catch (e) {
        ErrorState(errorText: e.toString());
      }
    });
  }
}
