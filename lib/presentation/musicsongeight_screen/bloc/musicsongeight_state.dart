// ignore_for_file: must_be_immutable

part of 'musicsongeight_bloc.dart';

/// Represents the state of Musicsongeight in the application.
class MusicsongeightState extends Equatable {
  MusicsongeightState({this.musicsongeightModelObj});

  MusicsongeightModel? musicsongeightModelObj;

  @override
  List<Object?> get props => [
        musicsongeightModelObj,
      ];
  MusicsongeightState copyWith({MusicsongeightModel? musicsongeightModelObj}) {
    return MusicsongeightState(
      musicsongeightModelObj:
          musicsongeightModelObj ?? this.musicsongeightModelObj,
    );
  }
}
