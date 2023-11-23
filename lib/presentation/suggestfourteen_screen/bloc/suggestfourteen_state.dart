// ignore_for_file: must_be_immutable

part of 'suggestfourteen_bloc.dart';

/// Represents the state of Suggestfourteen in the application.
class SuggestfourteenState extends Equatable {
  SuggestfourteenState({
    this.editTextController,
    this.suggestfourteenModelObj,
  });

  TextEditingController? editTextController;

  SuggestfourteenModel? suggestfourteenModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        suggestfourteenModelObj,
      ];
  SuggestfourteenState copyWith({
    TextEditingController? editTextController,
    SuggestfourteenModel? suggestfourteenModelObj,
  }) {
    return SuggestfourteenState(
      editTextController: editTextController ?? this.editTextController,
      suggestfourteenModelObj:
          suggestfourteenModelObj ?? this.suggestfourteenModelObj,
    );
  }
}
