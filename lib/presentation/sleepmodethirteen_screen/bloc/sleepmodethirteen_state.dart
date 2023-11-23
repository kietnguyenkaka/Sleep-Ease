// ignore_for_file: must_be_immutable

part of 'sleepmodethirteen_bloc.dart';

/// Represents the state of Sleepmodethirteen in the application.
class SleepmodethirteenState extends Equatable {
  SleepmodethirteenState({this.sleepmodethirteenModelObj});

  SleepmodethirteenModel? sleepmodethirteenModelObj;

  @override
  List<Object?> get props => [
        sleepmodethirteenModelObj,
      ];
  SleepmodethirteenState copyWith(
      {SleepmodethirteenModel? sleepmodethirteenModelObj}) {
    return SleepmodethirteenState(
      sleepmodethirteenModelObj:
          sleepmodethirteenModelObj ?? this.sleepmodethirteenModelObj,
    );
  }
}
