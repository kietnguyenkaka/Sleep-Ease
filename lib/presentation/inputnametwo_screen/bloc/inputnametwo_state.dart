// ignore_for_file: must_be_immutable

part of 'inputnametwo_bloc.dart';

/// Represents the state of Inputnametwo in the application.
class InputnametwoState extends Equatable {
  InputnametwoState({
    this.nameController,
    this.textFieldController,
    this.textFieldController1,
    this.inputnametwoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? textFieldController;

  TextEditingController? textFieldController1;

  InputnametwoModel? inputnametwoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        textFieldController,
        textFieldController1,
        inputnametwoModelObj,
      ];
  InputnametwoState copyWith({
    TextEditingController? nameController,
    TextEditingController? textFieldController,
    TextEditingController? textFieldController1,
    InputnametwoModel? inputnametwoModelObj,
  }) {
    return InputnametwoState(
      nameController: nameController ?? this.nameController,
      textFieldController: textFieldController ?? this.textFieldController,
      textFieldController1: textFieldController1 ?? this.textFieldController1,
      inputnametwoModelObj: inputnametwoModelObj ?? this.inputnametwoModelObj,
    );
  }
}
