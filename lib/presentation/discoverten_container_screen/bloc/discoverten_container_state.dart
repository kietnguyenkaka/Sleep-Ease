// ignore_for_file: must_be_immutable

part of 'discoverten_container_bloc.dart';

/// Represents the state of DiscovertenContainer in the application.
class DiscovertenContainerState extends Equatable {
  DiscovertenContainerState({this.discovertenContainerModelObj});

  DiscovertenContainerModel? discovertenContainerModelObj;

  @override
  List<Object?> get props => [
        discovertenContainerModelObj,
      ];
  DiscovertenContainerState copyWith(
      {DiscovertenContainerModel? discovertenContainerModelObj}) {
    return DiscovertenContainerState(
      discovertenContainerModelObj:
          discovertenContainerModelObj ?? this.discovertenContainerModelObj,
    );
  }
}
