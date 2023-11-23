// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'discoverten_item_model.dart';

/// This class defines the variables used in the [discoverten_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscovertenModel extends Equatable {
  DiscovertenModel({this.discovertenItemList = const []}) {}

  List<DiscovertenItemModel> discovertenItemList;

  DiscovertenModel copyWith({List<DiscovertenItemModel>? discovertenItemList}) {
    return DiscovertenModel(
      discovertenItemList: discovertenItemList ?? this.discovertenItemList,
    );
  }

  @override
  List<Object?> get props => [discovertenItemList];
}
