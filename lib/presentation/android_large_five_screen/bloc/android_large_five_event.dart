part of 'android_large_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AndroidLargeFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AndroidLargeFive widget is first created.
class AndroidLargeFiveInitialEvent extends AndroidLargeFiveEvent {
  @override
  List<Object?> get props => [];
}
