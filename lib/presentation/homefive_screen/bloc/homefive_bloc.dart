import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/homefive_item_model.dart';
import 'package:dreamease/presentation/homefive_screen/models/homefive_model.dart';
part 'homefive_event.dart';
part 'homefive_state.dart';

/// A bloc that manages the state of a Homefive according to the event that is dispatched to it.
class HomefiveBloc extends Bloc<HomefiveEvent, HomefiveState> {
  HomefiveBloc(HomefiveState initialState) : super(initialState) {
    on<HomefiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomefiveInitialEvent event,
    Emitter<HomefiveState> emit,
  ) async {
    emit(state.copyWith(
        homefiveModelObj: state.homefiveModelObj?.copyWith(
      homefiveItemList: fillHomefiveItemList(),
    )));
  }

  List<HomefiveItemModel> fillHomefiveItemList() {
    return [
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle11,
          ridingInTheHorse: "Riding in the horse"),
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle1197x132,
          ridingInTheHorse: "Space noise"),
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle111,
          ridingInTheHorse: "Green mood"),
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle112,
          ridingInTheHorse: "Raining"),
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle113,
          ridingInTheHorse: "White noise"),
      HomefiveItemModel(
          ridinginthehorse: ImageConstant.imgRectangle114,
          ridingInTheHorse: "Stream's sound")
    ];
  }
}
