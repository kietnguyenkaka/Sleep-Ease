// ignore_for_file: must_be_immutable

part of 'profilesixteen_bloc.dart';

/// Represents the state of Profilesixteen in the application.
class ProfilesixteenState extends Equatable {
  ProfilesixteenState({this.profilesixteenModelObj});

  ProfilesixteenModel? profilesixteenModelObj;

  @override
  List<Object?> get props => [
        profilesixteenModelObj,
      ];
  ProfilesixteenState copyWith({ProfilesixteenModel? profilesixteenModelObj}) {
    return ProfilesixteenState(
      profilesixteenModelObj:
          profilesixteenModelObj ?? this.profilesixteenModelObj,
    );
  }
}
