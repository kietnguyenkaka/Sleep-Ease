// ignore_for_file: must_be_immutable

part of 'homefour_bloc.dart';

/// Represents the state of Homefour in the application.
class HomefourState extends Equatable {
  HomefourState({this.homefourModelObj});

  HomefourModel? homefourModelObj;

  @override
  List<Object?> get props => [
        homefourModelObj,
      ];
  HomefourState copyWith({HomefourModel? homefourModelObj}) {
    return HomefourState(
      homefourModelObj: homefourModelObj ?? this.homefourModelObj,
    );
  }
}
