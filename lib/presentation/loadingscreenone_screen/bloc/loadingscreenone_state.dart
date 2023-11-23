// ignore_for_file: must_be_immutable

part of 'loadingscreenone_bloc.dart';

/// Represents the state of Loadingscreenone in the application.
class LoadingscreenoneState extends Equatable {
  LoadingscreenoneState({this.loadingscreenoneModelObj});

  LoadingscreenoneModel? loadingscreenoneModelObj;

  @override
  List<Object?> get props => [
        loadingscreenoneModelObj,
      ];
  LoadingscreenoneState copyWith(
      {LoadingscreenoneModel? loadingscreenoneModelObj}) {
    return LoadingscreenoneState(
      loadingscreenoneModelObj:
          loadingscreenoneModelObj ?? this.loadingscreenoneModelObj,
    );
  }
}
