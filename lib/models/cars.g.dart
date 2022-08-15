// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetCarCollection on Isar {
  IsarCollection<Car> get cars => getCollection();
}

const CarSchema = CollectionSchema(
  name: 'Car',
  schema:
      '{"name":"Car","idName":"carId","properties":[{"name":"carColor","type":"String"},{"name":"carCondition","type":"String"},{"name":"carDesc","type":"String"},{"name":"carDownPayment","type":"String"},{"name":"carFlatNumber","type":"String"},{"name":"carFuel","type":"String"},{"name":"carKilomoter","type":"Long"},{"name":"carMerk","type":"String"},{"name":"carModel","type":"String"},{"name":"carPrice","type":"Double"},{"name":"carUnitCode","type":"String"},{"name":"carYear","type":"String"}],"indexes":[],"links":[]}',
  idName: 'carId',
  propertyIds: {
    'carColor': 0,
    'carCondition': 1,
    'carDesc': 2,
    'carDownPayment': 3,
    'carFlatNumber': 4,
    'carFuel': 5,
    'carKilomoter': 6,
    'carMerk': 7,
    'carModel': 8,
    'carPrice': 9,
    'carUnitCode': 10,
    'carYear': 11
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _carGetId,
  setId: _carSetId,
  getLinks: _carGetLinks,
  attachLinks: _carAttachLinks,
  serializeNative: _carSerializeNative,
  deserializeNative: _carDeserializeNative,
  deserializePropNative: _carDeserializePropNative,
  serializeWeb: _carSerializeWeb,
  deserializeWeb: _carDeserializeWeb,
  deserializePropWeb: _carDeserializePropWeb,
  version: 3,
);

int? _carGetId(Car object) {
  if (object.carId == Isar.autoIncrement) {
    return null;
  } else {
    return object.carId;
  }
}

void _carSetId(Car object, int id) {
  object.carId = id;
}

List<IsarLinkBase> _carGetLinks(Car object) {
  return [];
}

void _carSerializeNative(IsarCollection<Car> collection, IsarRawObject rawObj,
    Car object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.carColor;
  IsarUint8List? _carColor;
  if (value0 != null) {
    _carColor = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_carColor?.length ?? 0) as int;
  final value1 = object.carCondition;
  IsarUint8List? _carCondition;
  if (value1 != null) {
    _carCondition = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_carCondition?.length ?? 0) as int;
  final value2 = object.carDesc;
  IsarUint8List? _carDesc;
  if (value2 != null) {
    _carDesc = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_carDesc?.length ?? 0) as int;
  final value3 = object.carDownPayment;
  IsarUint8List? _carDownPayment;
  if (value3 != null) {
    _carDownPayment = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_carDownPayment?.length ?? 0) as int;
  final value4 = object.carFlatNumber;
  IsarUint8List? _carFlatNumber;
  if (value4 != null) {
    _carFlatNumber = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_carFlatNumber?.length ?? 0) as int;
  final value5 = object.carFuel;
  IsarUint8List? _carFuel;
  if (value5 != null) {
    _carFuel = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_carFuel?.length ?? 0) as int;
  final value6 = object.carKilomoter;
  final _carKilomoter = value6;
  final value7 = object.carMerk;
  IsarUint8List? _carMerk;
  if (value7 != null) {
    _carMerk = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_carMerk?.length ?? 0) as int;
  final value8 = object.carModel;
  IsarUint8List? _carModel;
  if (value8 != null) {
    _carModel = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_carModel?.length ?? 0) as int;
  final value9 = object.carPrice;
  final _carPrice = value9;
  final value10 = object.carUnitCode;
  IsarUint8List? _carUnitCode;
  if (value10 != null) {
    _carUnitCode = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_carUnitCode?.length ?? 0) as int;
  final value11 = object.carYear;
  IsarUint8List? _carYear;
  if (value11 != null) {
    _carYear = IsarBinaryWriter.utf8Encoder.convert(value11);
  }
  dynamicSize += (_carYear?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _carColor);
  writer.writeBytes(offsets[1], _carCondition);
  writer.writeBytes(offsets[2], _carDesc);
  writer.writeBytes(offsets[3], _carDownPayment);
  writer.writeBytes(offsets[4], _carFlatNumber);
  writer.writeBytes(offsets[5], _carFuel);
  writer.writeLong(offsets[6], _carKilomoter);
  writer.writeBytes(offsets[7], _carMerk);
  writer.writeBytes(offsets[8], _carModel);
  writer.writeDouble(offsets[9], _carPrice);
  writer.writeBytes(offsets[10], _carUnitCode);
  writer.writeBytes(offsets[11], _carYear);
}

Car _carDeserializeNative(IsarCollection<Car> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Car();
  object.carColor = reader.readStringOrNull(offsets[0]);
  object.carCondition = reader.readStringOrNull(offsets[1]);
  object.carDesc = reader.readStringOrNull(offsets[2]);
  object.carDownPayment = reader.readStringOrNull(offsets[3]);
  object.carFlatNumber = reader.readStringOrNull(offsets[4]);
  object.carFuel = reader.readStringOrNull(offsets[5]);
  object.carId = id;
  object.carKilomoter = reader.readLong(offsets[6]);
  object.carMerk = reader.readStringOrNull(offsets[7]);
  object.carModel = reader.readStringOrNull(offsets[8]);
  object.carPrice = reader.readDouble(offsets[9]);
  object.carUnitCode = reader.readStringOrNull(offsets[10]);
  object.carYear = reader.readStringOrNull(offsets[11]);
  return object;
}

P _carDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _carSerializeWeb(IsarCollection<Car> collection, Car object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'carColor', object.carColor);
  IsarNative.jsObjectSet(jsObj, 'carCondition', object.carCondition);
  IsarNative.jsObjectSet(jsObj, 'carDesc', object.carDesc);
  IsarNative.jsObjectSet(jsObj, 'carDownPayment', object.carDownPayment);
  IsarNative.jsObjectSet(jsObj, 'carFlatNumber', object.carFlatNumber);
  IsarNative.jsObjectSet(jsObj, 'carFuel', object.carFuel);
  IsarNative.jsObjectSet(jsObj, 'carId', object.carId);
  IsarNative.jsObjectSet(jsObj, 'carKilomoter', object.carKilomoter);
  IsarNative.jsObjectSet(jsObj, 'carMerk', object.carMerk);
  IsarNative.jsObjectSet(jsObj, 'carModel', object.carModel);
  IsarNative.jsObjectSet(jsObj, 'carPrice', object.carPrice);
  IsarNative.jsObjectSet(jsObj, 'carUnitCode', object.carUnitCode);
  IsarNative.jsObjectSet(jsObj, 'carYear', object.carYear);
  return jsObj;
}

Car _carDeserializeWeb(IsarCollection<Car> collection, dynamic jsObj) {
  final object = Car();
  object.carColor = IsarNative.jsObjectGet(jsObj, 'carColor');
  object.carCondition = IsarNative.jsObjectGet(jsObj, 'carCondition');
  object.carDesc = IsarNative.jsObjectGet(jsObj, 'carDesc');
  object.carDownPayment = IsarNative.jsObjectGet(jsObj, 'carDownPayment');
  object.carFlatNumber = IsarNative.jsObjectGet(jsObj, 'carFlatNumber');
  object.carFuel = IsarNative.jsObjectGet(jsObj, 'carFuel');
  object.carId = IsarNative.jsObjectGet(jsObj, 'carId');
  object.carKilomoter =
      IsarNative.jsObjectGet(jsObj, 'carKilomoter') ?? double.negativeInfinity;
  object.carMerk = IsarNative.jsObjectGet(jsObj, 'carMerk');
  object.carModel = IsarNative.jsObjectGet(jsObj, 'carModel');
  object.carPrice =
      IsarNative.jsObjectGet(jsObj, 'carPrice') ?? double.negativeInfinity;
  object.carUnitCode = IsarNative.jsObjectGet(jsObj, 'carUnitCode');
  object.carYear = IsarNative.jsObjectGet(jsObj, 'carYear');
  return object;
}

P _carDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'carColor':
      return (IsarNative.jsObjectGet(jsObj, 'carColor')) as P;
    case 'carCondition':
      return (IsarNative.jsObjectGet(jsObj, 'carCondition')) as P;
    case 'carDesc':
      return (IsarNative.jsObjectGet(jsObj, 'carDesc')) as P;
    case 'carDownPayment':
      return (IsarNative.jsObjectGet(jsObj, 'carDownPayment')) as P;
    case 'carFlatNumber':
      return (IsarNative.jsObjectGet(jsObj, 'carFlatNumber')) as P;
    case 'carFuel':
      return (IsarNative.jsObjectGet(jsObj, 'carFuel')) as P;
    case 'carId':
      return (IsarNative.jsObjectGet(jsObj, 'carId')) as P;
    case 'carKilomoter':
      return (IsarNative.jsObjectGet(jsObj, 'carKilomoter') ??
          double.negativeInfinity) as P;
    case 'carMerk':
      return (IsarNative.jsObjectGet(jsObj, 'carMerk')) as P;
    case 'carModel':
      return (IsarNative.jsObjectGet(jsObj, 'carModel')) as P;
    case 'carPrice':
      return (IsarNative.jsObjectGet(jsObj, 'carPrice') ??
          double.negativeInfinity) as P;
    case 'carUnitCode':
      return (IsarNative.jsObjectGet(jsObj, 'carUnitCode')) as P;
    case 'carYear':
      return (IsarNative.jsObjectGet(jsObj, 'carYear')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _carAttachLinks(IsarCollection col, int id, Car object) {}

extension CarQueryWhereSort on QueryBuilder<Car, Car, QWhere> {
  QueryBuilder<Car, Car, QAfterWhere> anyCarId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension CarQueryWhere on QueryBuilder<Car, Car, QWhereClause> {
  QueryBuilder<Car, Car, QAfterWhereClause> carIdEqualTo(int carId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: carId,
      includeLower: true,
      upper: carId,
      includeUpper: true,
    ));
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdNotEqualTo(int carId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: carId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: carId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: carId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: carId, includeUpper: false),
      );
    }
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdGreaterThan(int carId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: carId, includeLower: include),
    );
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdLessThan(int carId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: carId, includeUpper: include),
    );
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdBetween(
    int lowerCarId,
    int upperCarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerCarId,
      includeLower: includeLower,
      upper: upperCarId,
      includeUpper: includeUpper,
    ));
  }
}

extension CarQueryFilter on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> carColorIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carColor',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carColor',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carColor',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carColor',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carCondition',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carCondition',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carCondition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carCondition',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carDesc',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carDesc',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carDesc',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carDesc',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carDownPayment',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carDownPayment',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carDownPayment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carDownPayment',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carFlatNumber',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carFlatNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carFlatNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carFlatNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carFuel',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carFuel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carFuel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carFuel',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carId',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carId',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carId',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carId',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carKilomoter',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carKilomoter',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carKilomoter',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carKilomoter',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carMerk',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carMerk',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carMerk',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carMerk',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carModel',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carModel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carModel',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carModel',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'carPrice',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'carPrice',
      value: value,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carUnitCode',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carUnitCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carUnitCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carUnitCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'carYear',
      value: null,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'carYear',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'carYear',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'carYear',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension CarQueryLinks on QueryBuilder<Car, Car, QFilterCondition> {}

extension CarQueryWhereSortBy on QueryBuilder<Car, Car, QSortBy> {
  QueryBuilder<Car, Car, QAfterSortBy> sortByCarColor() {
    return addSortByInternal('carColor', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarColorDesc() {
    return addSortByInternal('carColor', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarCondition() {
    return addSortByInternal('carCondition', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarConditionDesc() {
    return addSortByInternal('carCondition', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDesc() {
    return addSortByInternal('carDesc', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDescDesc() {
    return addSortByInternal('carDesc', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDownPayment() {
    return addSortByInternal('carDownPayment', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDownPaymentDesc() {
    return addSortByInternal('carDownPayment', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFlatNumber() {
    return addSortByInternal('carFlatNumber', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFlatNumberDesc() {
    return addSortByInternal('carFlatNumber', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFuel() {
    return addSortByInternal('carFuel', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFuelDesc() {
    return addSortByInternal('carFuel', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarId() {
    return addSortByInternal('carId', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarIdDesc() {
    return addSortByInternal('carId', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarKilomoter() {
    return addSortByInternal('carKilomoter', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarKilomoterDesc() {
    return addSortByInternal('carKilomoter', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarMerk() {
    return addSortByInternal('carMerk', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarMerkDesc() {
    return addSortByInternal('carMerk', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarModel() {
    return addSortByInternal('carModel', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarModelDesc() {
    return addSortByInternal('carModel', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarPrice() {
    return addSortByInternal('carPrice', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarPriceDesc() {
    return addSortByInternal('carPrice', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarUnitCode() {
    return addSortByInternal('carUnitCode', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarUnitCodeDesc() {
    return addSortByInternal('carUnitCode', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarYear() {
    return addSortByInternal('carYear', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarYearDesc() {
    return addSortByInternal('carYear', Sort.desc);
  }
}

extension CarQueryWhereSortThenBy on QueryBuilder<Car, Car, QSortThenBy> {
  QueryBuilder<Car, Car, QAfterSortBy> thenByCarColor() {
    return addSortByInternal('carColor', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarColorDesc() {
    return addSortByInternal('carColor', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarCondition() {
    return addSortByInternal('carCondition', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarConditionDesc() {
    return addSortByInternal('carCondition', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDesc() {
    return addSortByInternal('carDesc', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDescDesc() {
    return addSortByInternal('carDesc', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDownPayment() {
    return addSortByInternal('carDownPayment', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDownPaymentDesc() {
    return addSortByInternal('carDownPayment', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFlatNumber() {
    return addSortByInternal('carFlatNumber', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFlatNumberDesc() {
    return addSortByInternal('carFlatNumber', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFuel() {
    return addSortByInternal('carFuel', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFuelDesc() {
    return addSortByInternal('carFuel', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarId() {
    return addSortByInternal('carId', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarIdDesc() {
    return addSortByInternal('carId', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarKilomoter() {
    return addSortByInternal('carKilomoter', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarKilomoterDesc() {
    return addSortByInternal('carKilomoter', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarMerk() {
    return addSortByInternal('carMerk', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarMerkDesc() {
    return addSortByInternal('carMerk', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarModel() {
    return addSortByInternal('carModel', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarModelDesc() {
    return addSortByInternal('carModel', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarPrice() {
    return addSortByInternal('carPrice', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarPriceDesc() {
    return addSortByInternal('carPrice', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarUnitCode() {
    return addSortByInternal('carUnitCode', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarUnitCodeDesc() {
    return addSortByInternal('carUnitCode', Sort.desc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarYear() {
    return addSortByInternal('carYear', Sort.asc);
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarYearDesc() {
    return addSortByInternal('carYear', Sort.desc);
  }
}

extension CarQueryWhereDistinct on QueryBuilder<Car, Car, QDistinct> {
  QueryBuilder<Car, Car, QDistinct> distinctByCarColor(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carColor', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarCondition(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carCondition', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarDesc(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carDesc', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarDownPayment(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carDownPayment',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarFlatNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carFlatNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarFuel(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carFuel', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarId() {
    return addDistinctByInternal('carId');
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarKilomoter() {
    return addDistinctByInternal('carKilomoter');
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarMerk(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carMerk', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarModel(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carModel', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarPrice() {
    return addDistinctByInternal('carPrice');
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarUnitCode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carUnitCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarYear(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('carYear', caseSensitive: caseSensitive);
  }
}

extension CarQueryProperty on QueryBuilder<Car, Car, QQueryProperty> {
  QueryBuilder<Car, String?, QQueryOperations> carColorProperty() {
    return addPropertyNameInternal('carColor');
  }

  QueryBuilder<Car, String?, QQueryOperations> carConditionProperty() {
    return addPropertyNameInternal('carCondition');
  }

  QueryBuilder<Car, String?, QQueryOperations> carDescProperty() {
    return addPropertyNameInternal('carDesc');
  }

  QueryBuilder<Car, String?, QQueryOperations> carDownPaymentProperty() {
    return addPropertyNameInternal('carDownPayment');
  }

  QueryBuilder<Car, String?, QQueryOperations> carFlatNumberProperty() {
    return addPropertyNameInternal('carFlatNumber');
  }

  QueryBuilder<Car, String?, QQueryOperations> carFuelProperty() {
    return addPropertyNameInternal('carFuel');
  }

  QueryBuilder<Car, int?, QQueryOperations> carIdProperty() {
    return addPropertyNameInternal('carId');
  }

  QueryBuilder<Car, int, QQueryOperations> carKilomoterProperty() {
    return addPropertyNameInternal('carKilomoter');
  }

  QueryBuilder<Car, String?, QQueryOperations> carMerkProperty() {
    return addPropertyNameInternal('carMerk');
  }

  QueryBuilder<Car, String?, QQueryOperations> carModelProperty() {
    return addPropertyNameInternal('carModel');
  }

  QueryBuilder<Car, double, QQueryOperations> carPriceProperty() {
    return addPropertyNameInternal('carPrice');
  }

  QueryBuilder<Car, String?, QQueryOperations> carUnitCodeProperty() {
    return addPropertyNameInternal('carUnitCode');
  }

  QueryBuilder<Car, String?, QQueryOperations> carYearProperty() {
    return addPropertyNameInternal('carYear');
  }
}
