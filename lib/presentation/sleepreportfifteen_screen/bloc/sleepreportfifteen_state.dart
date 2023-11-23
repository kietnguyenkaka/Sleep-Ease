// ignore_for_file: must_be_immutable

part of 'sleepreportfifteen_bloc.dart';

/// Represents the state of Sleepreportfifteen in the application.
class SleepreportfifteenState extends Equatable {
  SleepreportfifteenState({this.sleepreportfifteenModelObj});

  SleepreportfifteenModel? sleepreportfifteenModelObj;

  @override
  List<Object?> get props => [
        sleepreportfifteenModelObj,
      ];
  SleepreportfifteenState copyWith(
      {SleepreportfifteenModel? sleepreportfifteenModelObj}) {
    return SleepreportfifteenState(
      sleepreportfifteenModelObj:
          sleepreportfifteenModelObj ?? this.sleepreportfifteenModelObj,
    );
  }
}
