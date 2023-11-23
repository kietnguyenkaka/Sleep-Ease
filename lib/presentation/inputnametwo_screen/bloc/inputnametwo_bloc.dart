import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/inputnametwo_screen/models/inputnametwo_model.dart';
part 'inputnametwo_event.dart';
part 'inputnametwo_state.dart';

/// A bloc that manages the state of a Inputnametwo according to the event that is dispatched to it.
class InputnametwoBloc extends Bloc<InputnametwoEvent, InputnametwoState> {
  InputnametwoBloc(InputnametwoState initialState) : super(initialState) {
    on<InputnametwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InputnametwoInitialEvent event,
    Emitter<InputnametwoState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        textFieldController: TextEditingController(),
        textFieldController1: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.suggestthreeScreen,
      );
    });
  }
}
