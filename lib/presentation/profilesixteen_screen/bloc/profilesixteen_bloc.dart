import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dreamease/presentation/profilesixteen_screen/models/profilesixteen_model.dart';
part 'profilesixteen_event.dart';
part 'profilesixteen_state.dart';

/// A bloc that manages the state of a Profilesixteen according to the event that is dispatched to it.
class ProfilesixteenBloc
    extends Bloc<ProfilesixteenEvent, ProfilesixteenState> {
  ProfilesixteenBloc(ProfilesixteenState initialState) : super(initialState) {
    on<ProfilesixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilesixteenInitialEvent event,
    Emitter<ProfilesixteenState> emit,
  ) async {}
}
