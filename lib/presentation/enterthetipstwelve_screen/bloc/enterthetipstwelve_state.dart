// ignore_for_file: must_be_immutable

part of 'enterthetipstwelve_bloc.dart';

/// Represents the state of Enterthetipstwelve in the application.
class EnterthetipstwelveState extends Equatable {
  EnterthetipstwelveState({this.enterthetipstwelveModelObj});

  EnterthetipstwelveModel? enterthetipstwelveModelObj;

  @override
  List<Object?> get props => [
        enterthetipstwelveModelObj,
      ];
  EnterthetipstwelveState copyWith(
      {EnterthetipstwelveModel? enterthetipstwelveModelObj}) {
    return EnterthetipstwelveState(
      enterthetipstwelveModelObj:
          enterthetipstwelveModelObj ?? this.enterthetipstwelveModelObj,
    );
  }
}
