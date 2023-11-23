import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/musicplaylistseven_screen/models/musicplaylistseven_model.dart';
part 'musicplaylistseven_event.dart';
part 'musicplaylistseven_state.dart';

/// A bloc that manages the state of a Musicplaylistseven according to the event that is dispatched to it.
class MusicplaylistsevenBloc
    extends Bloc<MusicplaylistsevenEvent, MusicplaylistsevenState> {
  MusicplaylistsevenBloc(MusicplaylistsevenState initialState)
      : super(initialState) {
    on<MusicplaylistsevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicplaylistsevenInitialEvent event,
    Emitter<MusicplaylistsevenState> emit,
  ) async {}
}
