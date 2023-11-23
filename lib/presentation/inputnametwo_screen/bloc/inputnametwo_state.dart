// ignore_for_file: must_be_immutable

part of 'inputnametwo_bloc.dart';

/// Represents the state of Inputnametwo in the application.
class InputnametwoState extends Equatable {
  InputnametwoState({
    this.inputNameController,
    this.inputField1Controller,
    this.inputField2Controller,
    this.inputnametwoModelObj,
  });

  TextEditingController? inputNameController;

  TextEditingController? inputField1Controller;

  TextEditingController? inputField2Controller;

  InputnametwoModel? inputnametwoModelObj;

  @override
  List<Object?> get props => [
        inputNameController,
        inputField1Controller,
        inputField2Controller,
        inputnametwoModelObj,
      ];
  InputnametwoState copyWith({
    TextEditingController? inputNameController,
    TextEditingController? inputField1Controller,
    TextEditingController? inputField2Controller,
    InputnametwoModel? inputnametwoModelObj,
  }) {
    return InputnametwoState(
      inputNameController: inputNameController ?? this.inputNameController,
      inputField1Controller:
          inputField1Controller ?? this.inputField1Controller,
      inputField2Controller:
          inputField2Controller ?? this.inputField2Controller,
      inputnametwoModelObj: inputnametwoModelObj ?? this.inputnametwoModelObj,
    );
  }
}
