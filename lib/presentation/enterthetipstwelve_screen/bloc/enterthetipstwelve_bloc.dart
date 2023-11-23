import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/enterthetipstwelve_screen/models/enterthetipstwelve_model.dart';
part 'enterthetipstwelve_event.dart';
part 'enterthetipstwelve_state.dart';

/// A bloc that manages the state of a Enterthetipstwelve according to the event that is dispatched to it.
class EnterthetipstwelveBloc
    extends Bloc<EnterthetipstwelveEvent, EnterthetipstwelveState> {
  EnterthetipstwelveBloc(EnterthetipstwelveState initialState)
      : super(initialState) {
    on<EnterthetipstwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EnterthetipstwelveInitialEvent event,
    Emitter<EnterthetipstwelveState> emit,
  ) async {}
}
