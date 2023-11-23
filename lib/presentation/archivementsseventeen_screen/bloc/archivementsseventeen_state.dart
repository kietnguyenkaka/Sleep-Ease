// ignore_for_file: must_be_immutable

part of 'archivementsseventeen_bloc.dart';

/// Represents the state of Archivementsseventeen in the application.
class ArchivementsseventeenState extends Equatable {
  ArchivementsseventeenState({this.archivementsseventeenModelObj});

  ArchivementsseventeenModel? archivementsseventeenModelObj;

  @override
  List<Object?> get props => [
        archivementsseventeenModelObj,
      ];
  ArchivementsseventeenState copyWith(
      {ArchivementsseventeenModel? archivementsseventeenModelObj}) {
    return ArchivementsseventeenState(
      archivementsseventeenModelObj:
          archivementsseventeenModelObj ?? this.archivementsseventeenModelObj,
    );
  }
}
