// ignore_for_file: must_be_immutable

part of 'homefive_bloc.dart';

/// Represents the state of Homefive in the application.
class HomefiveState extends Equatable {
  HomefiveState({this.homefiveModelObj});

  HomefiveModel? homefiveModelObj;

  @override
  List<Object?> get props => [
        homefiveModelObj,
      ];
  HomefiveState copyWith({HomefiveModel? homefiveModelObj}) {
    return HomefiveState(
      homefiveModelObj: homefiveModelObj ?? this.homefiveModelObj,
    );
  }
}
