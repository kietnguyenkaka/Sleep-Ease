import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/discoverten_container_screen/models/discoverten_container_model.dart';
part 'discoverten_container_event.dart';
part 'discoverten_container_state.dart';

/// A bloc that manages the state of a DiscovertenContainer according to the event that is dispatched to it.
class DiscovertenContainerBloc
    extends Bloc<DiscovertenContainerEvent, DiscovertenContainerState> {
  DiscovertenContainerBloc(DiscovertenContainerState initialState)
      : super(initialState) {
    on<DiscovertenContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscovertenContainerInitialEvent event,
    Emitter<DiscovertenContainerState> emit,
  ) async {}
}
