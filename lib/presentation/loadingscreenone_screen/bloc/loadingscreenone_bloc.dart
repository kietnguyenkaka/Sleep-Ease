import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/loadingscreenone_screen/models/loadingscreenone_model.dart';
part 'loadingscreenone_event.dart';
part 'loadingscreenone_state.dart';

/// A bloc that manages the state of a Loadingscreenone according to the event that is dispatched to it.
class LoadingscreenoneBloc
    extends Bloc<LoadingscreenoneEvent, LoadingscreenoneState> {
  LoadingscreenoneBloc(LoadingscreenoneState initialState)
      : super(initialState) {
    on<LoadingscreenoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoadingscreenoneInitialEvent event,
    Emitter<LoadingscreenoneState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.inputnametwoScreen,
      );
    });
  }
}
