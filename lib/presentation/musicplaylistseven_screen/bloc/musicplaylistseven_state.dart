// ignore_for_file: must_be_immutable

part of 'musicplaylistseven_bloc.dart';

/// Represents the state of Musicplaylistseven in the application.
class MusicplaylistsevenState extends Equatable {
  MusicplaylistsevenState({this.musicplaylistsevenModelObj});

  MusicplaylistsevenModel? musicplaylistsevenModelObj;

  @override
  List<Object?> get props => [
        musicplaylistsevenModelObj,
      ];
  MusicplaylistsevenState copyWith(
      {MusicplaylistsevenModel? musicplaylistsevenModelObj}) {
    return MusicplaylistsevenState(
      musicplaylistsevenModelObj:
          musicplaylistsevenModelObj ?? this.musicplaylistsevenModelObj,
    );
  }
}
