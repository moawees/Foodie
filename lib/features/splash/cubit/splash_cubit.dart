import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void startAnimation() {
    emit(SplashAnimating());
    // Simulate animation duration, then emit completed state
    Timer(const Duration(seconds: 3), () {
      emit(SplashCompleted());
    });
  }
} 