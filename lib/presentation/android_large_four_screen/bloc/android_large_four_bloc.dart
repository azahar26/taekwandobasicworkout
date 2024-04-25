import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/android_large_four_model.dart';
part 'android_large_four_event.dart';
part 'android_large_four_state.dart';

/// A bloc that manages the state of a AndroidLargeFour according to the event that is dispatched to it.
class AndroidLargeFourBloc
    extends Bloc<AndroidLargeFourEvent, AndroidLargeFourState> {
  AndroidLargeFourBloc(AndroidLargeFourState initialState)
      : super(initialState) {
    on<AndroidLargeFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeFourInitialEvent event,
    Emitter<AndroidLargeFourState> emit,
  ) async {}
}
