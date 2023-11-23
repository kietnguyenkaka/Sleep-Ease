// ignore_for_file: must_be_immutable

part of 'discoverten_bloc.dart';

/// Represents the state of Discoverten in the application.
class DiscovertenState extends Equatable {
  DiscovertenState({this.discovertenModelObj});

  DiscovertenModel? discovertenModelObj;

  @override
  List<Object?> get props => [
        discovertenModelObj,
      ];
  DiscovertenState copyWith({DiscovertenModel? discovertenModelObj}) {
    return DiscovertenState(
      discovertenModelObj: discovertenModelObj ?? this.discovertenModelObj,
    );
  }
}
