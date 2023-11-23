import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discoverten_item_model.dart';
import 'package:dreamease/presentation/discoverten_page/models/discoverten_model.dart';
part 'discoverten_event.dart';
part 'discoverten_state.dart';

/// A bloc that manages the state of a Discoverten according to the event that is dispatched to it.
class DiscovertenBloc extends Bloc<DiscovertenEvent, DiscovertenState> {
  DiscovertenBloc(DiscovertenState initialState) : super(initialState) {
    on<DiscovertenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscovertenInitialEvent event,
    Emitter<DiscovertenState> emit,
  ) async {
    emit(state.copyWith(
        discovertenModelObj: state.discovertenModelObj
            ?.copyWith(discovertenItemList: fillDiscovertenItemList())));
  }

  List<DiscovertenItemModel> fillDiscovertenItemList() {
    return [
      DiscovertenItemModel(h: "5h", wd: "Wd"),
      DiscovertenItemModel(h: "5h", wd: "Th"),
      DiscovertenItemModel(h: "3h", wd: "Sn"),
      DiscovertenItemModel(h: "5h", wd: "Mn"),
      DiscovertenItemModel(h: "2h", wd: "Tu")
    ];
  }
}
