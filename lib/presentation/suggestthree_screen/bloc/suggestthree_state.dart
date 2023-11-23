// ignore_for_file: must_be_immutable

part of 'suggestthree_bloc.dart';

/// Represents the state of Suggestthree in the application.
class SuggestthreeState extends Equatable {
  SuggestthreeState({
    this.textFieldController,
    this.suggestthreeModelObj,
  });

  TextEditingController? textFieldController;

  SuggestthreeModel? suggestthreeModelObj;

  @override
  List<Object?> get props => [
        textFieldController,
        suggestthreeModelObj,
      ];
  SuggestthreeState copyWith({
    TextEditingController? textFieldController,
    SuggestthreeModel? suggestthreeModelObj,
  }) {
    return SuggestthreeState(
      textFieldController: textFieldController ?? this.textFieldController,
      suggestthreeModelObj: suggestthreeModelObj ?? this.suggestthreeModelObj,
    );
  }
}
