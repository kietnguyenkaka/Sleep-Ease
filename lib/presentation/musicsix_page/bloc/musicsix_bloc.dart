import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/musicsix_page/models/musicsix_model.dart';
part 'musicsix_event.dart';
part 'musicsix_state.dart';

/// A bloc that manages the state of a Musicsix according to the event that is dispatched to it.
class MusicsixBloc extends Bloc<MusicsixEvent, MusicsixState> {
  MusicsixBloc(MusicsixState initialState) : super(initialState) {
    on<MusicsixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusicsixInitialEvent event,
    Emitter<MusicsixState> emit,
  ) async {}
}
