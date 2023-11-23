// ignore_for_file: must_be_immutable

part of 'helptwenty_bloc.dart';

/// Represents the state of Helptwenty in the application.
class HelptwentyState extends Equatable {
  HelptwentyState({this.helptwentyModelObj});

  HelptwentyModel? helptwentyModelObj;

  @override
  List<Object?> get props => [
        helptwentyModelObj,
      ];
  HelptwentyState copyWith({HelptwentyModel? helptwentyModelObj}) {
    return HelptwentyState(
      helptwentyModelObj: helptwentyModelObj ?? this.helptwentyModelObj,
    );
  }
}
