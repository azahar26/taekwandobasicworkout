import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/android_large_one_model.dart';
part 'android_large_one_event.dart';
part 'android_large_one_state.dart';

/// A bloc that manages the state of a AndroidLargeOne according to the event that is dispatched to it.
class AndroidLargeOneBloc
    extends Bloc<AndroidLargeOneEvent, AndroidLargeOneState> {
  AndroidLargeOneBloc(AndroidLargeOneState initialState) : super(initialState) {
    on<AndroidLargeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeOneInitialEvent event,
    Emitter<AndroidLargeOneState> emit,
  ) async {}
}
