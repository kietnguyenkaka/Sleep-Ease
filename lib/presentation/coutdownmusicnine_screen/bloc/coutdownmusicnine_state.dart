// ignore_for_file: must_be_immutable

part of 'coutdownmusicnine_bloc.dart';

/// Represents the state of Coutdownmusicnine in the application.
class CoutdownmusicnineState extends Equatable {
  CoutdownmusicnineState({this.coutdownmusicnineModelObj});

  CoutdownmusicnineModel? coutdownmusicnineModelObj;

  @override
  List<Object?> get props => [
        coutdownmusicnineModelObj,
      ];
  CoutdownmusicnineState copyWith(
      {CoutdownmusicnineModel? coutdownmusicnineModelObj}) {
    return CoutdownmusicnineState(
      coutdownmusicnineModelObj:
          coutdownmusicnineModelObj ?? this.coutdownmusicnineModelObj,
    );
  }
}
