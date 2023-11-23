import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/musicsongeight_screen/models/musicsongeight_model.dart';
part 'musicsongeight_event.dart';
part 'musicsongeight_state.dart';

/// A bloc that manages the state of a Musicsongeight according to the event that is dispatched to it.
class MusicsongeightBloc
    extends Bloc<MusicsongeightEvent, MusicsongeightState> {
  MusicsongeightBloc(MusicsongeightState initialState) : super(initialState) {
    on<MusicsongeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicsongeightInitialEvent event,
    Emitter<MusicsongeightState> emit,
  ) async {}
}
