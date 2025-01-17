// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String TotalAmountValueKey = 'totalAmount';
const String TotalConsumptionValueKey = 'totalConsumption';
const String FirstDptoValueKey = 'firstDpto';
const String SecondDptoValueKey = 'secondDpto';
const String ThirdDptoValueKey = 'thirdDpto';
const String QuartDptoValueKey = 'quartDpto';
const String WaterAmountValueKey = 'waterAmount';

final Map<String, TextEditingController>
    _CostCalculatorViewTextEditingControllers = {};

final Map<String, FocusNode> _CostCalculatorViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CostCalculatorViewTextValidations = {
  TotalAmountValueKey: null,
  TotalConsumptionValueKey: null,
  FirstDptoValueKey: null,
  SecondDptoValueKey: null,
  ThirdDptoValueKey: null,
  QuartDptoValueKey: null,
  WaterAmountValueKey: null,
};

mixin $CostCalculatorView {
  TextEditingController get totalAmountController =>
      _getFormTextEditingController(TotalAmountValueKey);
  TextEditingController get totalConsumptionController =>
      _getFormTextEditingController(TotalConsumptionValueKey);
  TextEditingController get firstDptoController =>
      _getFormTextEditingController(FirstDptoValueKey);
  TextEditingController get secondDptoController =>
      _getFormTextEditingController(SecondDptoValueKey);
  TextEditingController get thirdDptoController =>
      _getFormTextEditingController(ThirdDptoValueKey);
  TextEditingController get quartDptoController =>
      _getFormTextEditingController(QuartDptoValueKey);
  TextEditingController get waterAmountController =>
      _getFormTextEditingController(WaterAmountValueKey);

  FocusNode get totalAmountFocusNode => _getFormFocusNode(TotalAmountValueKey);
  FocusNode get totalConsumptionFocusNode =>
      _getFormFocusNode(TotalConsumptionValueKey);
  FocusNode get firstDptoFocusNode => _getFormFocusNode(FirstDptoValueKey);
  FocusNode get secondDptoFocusNode => _getFormFocusNode(SecondDptoValueKey);
  FocusNode get thirdDptoFocusNode => _getFormFocusNode(ThirdDptoValueKey);
  FocusNode get quartDptoFocusNode => _getFormFocusNode(QuartDptoValueKey);
  FocusNode get waterAmountFocusNode => _getFormFocusNode(WaterAmountValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_CostCalculatorViewTextEditingControllers.containsKey(key)) {
      return _CostCalculatorViewTextEditingControllers[key]!;
    }

    _CostCalculatorViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CostCalculatorViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CostCalculatorViewFocusNodes.containsKey(key)) {
      return _CostCalculatorViewFocusNodes[key]!;
    }
    _CostCalculatorViewFocusNodes[key] = FocusNode();
    return _CostCalculatorViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    totalAmountController.addListener(() => _updateFormData(model));
    totalConsumptionController.addListener(() => _updateFormData(model));
    firstDptoController.addListener(() => _updateFormData(model));
    secondDptoController.addListener(() => _updateFormData(model));
    thirdDptoController.addListener(() => _updateFormData(model));
    quartDptoController.addListener(() => _updateFormData(model));
    waterAmountController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    totalAmountController.addListener(() => _updateFormData(model));
    totalConsumptionController.addListener(() => _updateFormData(model));
    firstDptoController.addListener(() => _updateFormData(model));
    secondDptoController.addListener(() => _updateFormData(model));
    thirdDptoController.addListener(() => _updateFormData(model));
    quartDptoController.addListener(() => _updateFormData(model));
    waterAmountController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          TotalAmountValueKey: totalAmountController.text,
          TotalConsumptionValueKey: totalConsumptionController.text,
          FirstDptoValueKey: firstDptoController.text,
          SecondDptoValueKey: secondDptoController.text,
          ThirdDptoValueKey: thirdDptoController.text,
          QuartDptoValueKey: quartDptoController.text,
          WaterAmountValueKey: waterAmountController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CostCalculatorViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CostCalculatorViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CostCalculatorViewTextEditingControllers.clear();
    _CostCalculatorViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get totalAmountValue =>
      this.formValueMap[TotalAmountValueKey] as String?;
  String? get totalConsumptionValue =>
      this.formValueMap[TotalConsumptionValueKey] as String?;
  String? get firstDptoValue => this.formValueMap[FirstDptoValueKey] as String?;
  String? get secondDptoValue =>
      this.formValueMap[SecondDptoValueKey] as String?;
  String? get thirdDptoValue => this.formValueMap[ThirdDptoValueKey] as String?;
  String? get quartDptoValue => this.formValueMap[QuartDptoValueKey] as String?;
  String? get waterAmountValue =>
      this.formValueMap[WaterAmountValueKey] as String?;

  set totalAmountValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TotalAmountValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        TotalAmountValueKey)) {
      _CostCalculatorViewTextEditingControllers[TotalAmountValueKey]?.text =
          value ?? '';
    }
  }

  set totalConsumptionValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TotalConsumptionValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        TotalConsumptionValueKey)) {
      _CostCalculatorViewTextEditingControllers[TotalConsumptionValueKey]
          ?.text = value ?? '';
    }
  }

  set firstDptoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstDptoValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        FirstDptoValueKey)) {
      _CostCalculatorViewTextEditingControllers[FirstDptoValueKey]?.text =
          value ?? '';
    }
  }

  set secondDptoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SecondDptoValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        SecondDptoValueKey)) {
      _CostCalculatorViewTextEditingControllers[SecondDptoValueKey]?.text =
          value ?? '';
    }
  }

  set thirdDptoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ThirdDptoValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        ThirdDptoValueKey)) {
      _CostCalculatorViewTextEditingControllers[ThirdDptoValueKey]?.text =
          value ?? '';
    }
  }

  set quartDptoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({QuartDptoValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        QuartDptoValueKey)) {
      _CostCalculatorViewTextEditingControllers[QuartDptoValueKey]?.text =
          value ?? '';
    }
  }

  set waterAmountValue(String? value) {
    this.setData(
      this.formValueMap..addAll({WaterAmountValueKey: value}),
    );

    if (_CostCalculatorViewTextEditingControllers.containsKey(
        WaterAmountValueKey)) {
      _CostCalculatorViewTextEditingControllers[WaterAmountValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasTotalAmount =>
      this.formValueMap.containsKey(TotalAmountValueKey) &&
      (totalAmountValue?.isNotEmpty ?? false);
  bool get hasTotalConsumption =>
      this.formValueMap.containsKey(TotalConsumptionValueKey) &&
      (totalConsumptionValue?.isNotEmpty ?? false);
  bool get hasFirstDpto =>
      this.formValueMap.containsKey(FirstDptoValueKey) &&
      (firstDptoValue?.isNotEmpty ?? false);
  bool get hasSecondDpto =>
      this.formValueMap.containsKey(SecondDptoValueKey) &&
      (secondDptoValue?.isNotEmpty ?? false);
  bool get hasThirdDpto =>
      this.formValueMap.containsKey(ThirdDptoValueKey) &&
      (thirdDptoValue?.isNotEmpty ?? false);
  bool get hasQuartDpto =>
      this.formValueMap.containsKey(QuartDptoValueKey) &&
      (quartDptoValue?.isNotEmpty ?? false);
  bool get hasWaterAmount =>
      this.formValueMap.containsKey(WaterAmountValueKey) &&
      (waterAmountValue?.isNotEmpty ?? false);

  bool get hasTotalAmountValidationMessage =>
      this.fieldsValidationMessages[TotalAmountValueKey]?.isNotEmpty ?? false;
  bool get hasTotalConsumptionValidationMessage =>
      this.fieldsValidationMessages[TotalConsumptionValueKey]?.isNotEmpty ??
      false;
  bool get hasFirstDptoValidationMessage =>
      this.fieldsValidationMessages[FirstDptoValueKey]?.isNotEmpty ?? false;
  bool get hasSecondDptoValidationMessage =>
      this.fieldsValidationMessages[SecondDptoValueKey]?.isNotEmpty ?? false;
  bool get hasThirdDptoValidationMessage =>
      this.fieldsValidationMessages[ThirdDptoValueKey]?.isNotEmpty ?? false;
  bool get hasQuartDptoValidationMessage =>
      this.fieldsValidationMessages[QuartDptoValueKey]?.isNotEmpty ?? false;
  bool get hasWaterAmountValidationMessage =>
      this.fieldsValidationMessages[WaterAmountValueKey]?.isNotEmpty ?? false;

  String? get totalAmountValidationMessage =>
      this.fieldsValidationMessages[TotalAmountValueKey];
  String? get totalConsumptionValidationMessage =>
      this.fieldsValidationMessages[TotalConsumptionValueKey];
  String? get firstDptoValidationMessage =>
      this.fieldsValidationMessages[FirstDptoValueKey];
  String? get secondDptoValidationMessage =>
      this.fieldsValidationMessages[SecondDptoValueKey];
  String? get thirdDptoValidationMessage =>
      this.fieldsValidationMessages[ThirdDptoValueKey];
  String? get quartDptoValidationMessage =>
      this.fieldsValidationMessages[QuartDptoValueKey];
  String? get waterAmountValidationMessage =>
      this.fieldsValidationMessages[WaterAmountValueKey];
}

extension Methods on FormStateHelper {
  setTotalAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TotalAmountValueKey] = validationMessage;
  setTotalConsumptionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TotalConsumptionValueKey] =
          validationMessage;
  setFirstDptoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstDptoValueKey] = validationMessage;
  setSecondDptoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SecondDptoValueKey] = validationMessage;
  setThirdDptoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ThirdDptoValueKey] = validationMessage;
  setQuartDptoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[QuartDptoValueKey] = validationMessage;
  setWaterAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[WaterAmountValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    totalAmountValue = '';
    totalConsumptionValue = '';
    firstDptoValue = '';
    secondDptoValue = '';
    thirdDptoValue = '';
    quartDptoValue = '';
    waterAmountValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      TotalAmountValueKey: getValidationMessage(TotalAmountValueKey),
      TotalConsumptionValueKey: getValidationMessage(TotalConsumptionValueKey),
      FirstDptoValueKey: getValidationMessage(FirstDptoValueKey),
      SecondDptoValueKey: getValidationMessage(SecondDptoValueKey),
      ThirdDptoValueKey: getValidationMessage(ThirdDptoValueKey),
      QuartDptoValueKey: getValidationMessage(QuartDptoValueKey),
      WaterAmountValueKey: getValidationMessage(WaterAmountValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _CostCalculatorViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _CostCalculatorViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      TotalAmountValueKey: getValidationMessage(TotalAmountValueKey),
      TotalConsumptionValueKey: getValidationMessage(TotalConsumptionValueKey),
      FirstDptoValueKey: getValidationMessage(FirstDptoValueKey),
      SecondDptoValueKey: getValidationMessage(SecondDptoValueKey),
      ThirdDptoValueKey: getValidationMessage(ThirdDptoValueKey),
      QuartDptoValueKey: getValidationMessage(QuartDptoValueKey),
      WaterAmountValueKey: getValidationMessage(WaterAmountValueKey),
    });
