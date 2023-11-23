// ignore_for_file: must_be_immutable

part of 'musicsix_bloc.dart';

/// Represents the state of Musicsix in the application.
class MusicsixState extends Equatable {
  MusicsixState({this.musicsixModelObj});

  MusicsixModel? musicsixModelObj;

  @override
  List<Object?> get props => [
        musicsixModelObj,
      ];
  MusicsixState copyWith({MusicsixModel? musicsixModelObj}) {
    return MusicsixState(
      musicsixModelObj: musicsixModelObj ?? this.musicsixModelObj,
    );
  }
}
