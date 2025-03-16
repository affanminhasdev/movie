// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// This is the In-App Purchase customer info.
class CustomerInfoStruct extends FFFirebaseStruct {
  CustomerInfoStruct({
    bool? isActive,
    bool? willRenew,
    DateTime? latestPurchaseDate,
    DateTime? originalPurchaseDate,
    String? productIdentifier,
    String? store,
    DateTime? expirationDate,
    String? productPlanIdentifier,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isActive = isActive,
        _willRenew = willRenew,
        _latestPurchaseDate = latestPurchaseDate,
        _originalPurchaseDate = originalPurchaseDate,
        _productIdentifier = productIdentifier,
        _store = store,
        _expirationDate = expirationDate,
        _productPlanIdentifier = productPlanIdentifier,
        super(firestoreUtilData);

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "willRenew" field.
  bool? _willRenew;
  bool get willRenew => _willRenew ?? false;
  set willRenew(bool? val) => _willRenew = val;

  bool hasWillRenew() => _willRenew != null;

  // "latestPurchaseDate" field.
  DateTime? _latestPurchaseDate;
  DateTime? get latestPurchaseDate => _latestPurchaseDate;
  set latestPurchaseDate(DateTime? val) => _latestPurchaseDate = val;

  bool hasLatestPurchaseDate() => _latestPurchaseDate != null;

  // "originalPurchaseDate" field.
  DateTime? _originalPurchaseDate;
  DateTime? get originalPurchaseDate => _originalPurchaseDate;
  set originalPurchaseDate(DateTime? val) => _originalPurchaseDate = val;

  bool hasOriginalPurchaseDate() => _originalPurchaseDate != null;

  // "productIdentifier" field.
  String? _productIdentifier;
  String get productIdentifier => _productIdentifier ?? '';
  set productIdentifier(String? val) => _productIdentifier = val;

  bool hasProductIdentifier() => _productIdentifier != null;

  // "store" field.
  String? _store;
  String get store => _store ?? '';
  set store(String? val) => _store = val;

  bool hasStore() => _store != null;

  // "expirationDate" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  set expirationDate(DateTime? val) => _expirationDate = val;

  bool hasExpirationDate() => _expirationDate != null;

  // "productPlanIdentifier" field.
  String? _productPlanIdentifier;
  String get productPlanIdentifier => _productPlanIdentifier ?? '';
  set productPlanIdentifier(String? val) => _productPlanIdentifier = val;

  bool hasProductPlanIdentifier() => _productPlanIdentifier != null;

  static CustomerInfoStruct fromMap(Map<String, dynamic> data) =>
      CustomerInfoStruct(
        isActive: data['isActive'] as bool?,
        willRenew: data['willRenew'] as bool?,
        latestPurchaseDate: data['latestPurchaseDate'] as DateTime?,
        originalPurchaseDate: data['originalPurchaseDate'] as DateTime?,
        productIdentifier: data['productIdentifier'] as String?,
        store: data['store'] as String?,
        expirationDate: data['expirationDate'] as DateTime?,
        productPlanIdentifier: data['productPlanIdentifier'] as String?,
      );

  static CustomerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isActive': _isActive,
        'willRenew': _willRenew,
        'latestPurchaseDate': _latestPurchaseDate,
        'originalPurchaseDate': _originalPurchaseDate,
        'productIdentifier': _productIdentifier,
        'store': _store,
        'expirationDate': _expirationDate,
        'productPlanIdentifier': _productPlanIdentifier,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'willRenew': serializeParam(
          _willRenew,
          ParamType.bool,
        ),
        'latestPurchaseDate': serializeParam(
          _latestPurchaseDate,
          ParamType.DateTime,
        ),
        'originalPurchaseDate': serializeParam(
          _originalPurchaseDate,
          ParamType.DateTime,
        ),
        'productIdentifier': serializeParam(
          _productIdentifier,
          ParamType.String,
        ),
        'store': serializeParam(
          _store,
          ParamType.String,
        ),
        'expirationDate': serializeParam(
          _expirationDate,
          ParamType.DateTime,
        ),
        'productPlanIdentifier': serializeParam(
          _productPlanIdentifier,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerInfoStruct(
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        willRenew: deserializeParam(
          data['willRenew'],
          ParamType.bool,
          false,
        ),
        latestPurchaseDate: deserializeParam(
          data['latestPurchaseDate'],
          ParamType.DateTime,
          false,
        ),
        originalPurchaseDate: deserializeParam(
          data['originalPurchaseDate'],
          ParamType.DateTime,
          false,
        ),
        productIdentifier: deserializeParam(
          data['productIdentifier'],
          ParamType.String,
          false,
        ),
        store: deserializeParam(
          data['store'],
          ParamType.String,
          false,
        ),
        expirationDate: deserializeParam(
          data['expirationDate'],
          ParamType.DateTime,
          false,
        ),
        productPlanIdentifier: deserializeParam(
          data['productPlanIdentifier'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerInfoStruct &&
        isActive == other.isActive &&
        willRenew == other.willRenew &&
        latestPurchaseDate == other.latestPurchaseDate &&
        originalPurchaseDate == other.originalPurchaseDate &&
        productIdentifier == other.productIdentifier &&
        store == other.store &&
        expirationDate == other.expirationDate &&
        productPlanIdentifier == other.productPlanIdentifier;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isActive,
        willRenew,
        latestPurchaseDate,
        originalPurchaseDate,
        productIdentifier,
        store,
        expirationDate,
        productPlanIdentifier
      ]);
}

CustomerInfoStruct createCustomerInfoStruct({
  bool? isActive,
  bool? willRenew,
  DateTime? latestPurchaseDate,
  DateTime? originalPurchaseDate,
  String? productIdentifier,
  String? store,
  DateTime? expirationDate,
  String? productPlanIdentifier,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomerInfoStruct(
      isActive: isActive,
      willRenew: willRenew,
      latestPurchaseDate: latestPurchaseDate,
      originalPurchaseDate: originalPurchaseDate,
      productIdentifier: productIdentifier,
      store: store,
      expirationDate: expirationDate,
      productPlanIdentifier: productPlanIdentifier,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustomerInfoStruct? updateCustomerInfoStruct(
  CustomerInfoStruct? customerInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    customerInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustomerInfoStructData(
  Map<String, dynamic> firestoreData,
  CustomerInfoStruct? customerInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customerInfo == null) {
    return;
  }
  if (customerInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && customerInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customerInfoData =
      getCustomerInfoFirestoreData(customerInfo, forFieldValue);
  final nestedData =
      customerInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = customerInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomerInfoFirestoreData(
  CustomerInfoStruct? customerInfo, [
  bool forFieldValue = false,
]) {
  if (customerInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(customerInfo.toMap());

  // Add any Firestore field values
  customerInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomerInfoListFirestoreData(
  List<CustomerInfoStruct>? customerInfos,
) =>
    customerInfos?.map((e) => getCustomerInfoFirestoreData(e, true)).toList() ??
    [];
