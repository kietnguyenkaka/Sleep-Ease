// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'homefour_item_model.dart';

/// This class defines the variables used in the [homefour_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomefourModel extends Equatable {
  HomefourModel({this.homefourItemList = const []}) {}

  List<HomefourItemModel> homefourItemList;

  HomefourModel copyWith({List<HomefourItemModel>? homefourItemList}) {
    return HomefourModel(
      homefourItemList: homefourItemList ?? this.homefourItemList,
    );
  }

  @override
  List<Object?> get props => [homefourItemList];
}
