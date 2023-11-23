// ignore_for_file: must_be_immutable

part of 'tipseleven_bloc.dart';

/// Represents the state of Tipseleven in the application.
class TipselevenState extends Equatable {
  TipselevenState({this.tipselevenModelObj});

  TipselevenModel? tipselevenModelObj;

  @override
  List<Object?> get props => [
        tipselevenModelObj,
      ];
  TipselevenState copyWith({TipselevenModel? tipselevenModelObj}) {
    return TipselevenState(
      tipselevenModelObj: tipselevenModelObj ?? this.tipselevenModelObj,
    );
  }
}
