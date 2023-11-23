import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/homefour_item_model.dart';
import 'package:dreamease/presentation/homefour_page/models/homefour_model.dart';
part 'homefour_event.dart';
part 'homefour_state.dart';

/// A bloc that manages the state of a Homefour according to the event that is dispatched to it.
class HomefourBloc extends Bloc<HomefourEvent, HomefourState> {
  HomefourBloc(HomefourState initialState) : super(initialState) {
    on<HomefourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomefourInitialEvent event,
    Emitter<HomefourState> emit,
  ) async {
    emit(state.copyWith(
        homefourModelObj: state.homefourModelObj
            ?.copyWith(homefourItemList: fillHomefourItemList())));
  }

  List<HomefourItemModel> fillHomefourItemList() {
    return [
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle11,
          ridingInTheHorse: "Riding in the horse"),
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle1197x132,
          ridingInTheHorse: "Space noise"),
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle111,
          ridingInTheHorse: "Green mood"),
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle112,
          ridingInTheHorse: "Raining"),
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle113,
          ridingInTheHorse: "White noise"),
      HomefourItemModel(
          ridinginthehorse: ImageConstant.imgRectangle114,
          ridingInTheHorse: "Stream's sound")
    ];
  }
}
