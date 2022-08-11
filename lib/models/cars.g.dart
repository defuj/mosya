// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetCarCollection on Isar {
  IsarCollection<Car> get cars => collection();
}

const CarSchema = CollectionSchema(
  name: r'Car',
  schema:
      r'{"name":"Car","idName":"carId","properties":[{"name":"carColor","type":"String"},{"name":"carCondition","type":"String"},{"name":"carDesc","type":"String"},{"name":"carDownPayment","type":"String"},{"name":"carFlatNumber","type":"String"},{"name":"carFuel","type":"String"},{"name":"carKilomoter","type":"Long"},{"name":"carMerk","type":"String"},{"name":"carModel","type":"String"},{"name":"carPrice","type":"Double"},{"name":"carUnitCode","type":"String"},{"name":"carYear","type":"String"}],"indexes":[],"links":[]}',
  idName: r'carId',
  propertyIds: {
    r'carColor': 0,
    r'carCondition': 1,
    r'carDesc': 2,
    r'carDownPayment': 3,
    r'carFlatNumber': 4,
    r'carFuel': 5,
    r'carKilomoter': 6,
    r'carMerk': 7,
    r'carModel': 8,
    r'carPrice': 9,
    r'carUnitCode': 10,
    r'carYear': 11
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
  version: 4,
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

List<IsarLinkBase<dynamic>> _carGetLinks(Car object) {
  return [];
}

void _carSerializeNative(IsarCollection<Car> collection, IsarCObject cObj,
    Car object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  IsarUint8List? carColor$Bytes;
  final carColor$Value = object.carColor;
  if (carColor$Value != null) {
    carColor$Bytes = IsarBinaryWriter.utf8Encoder.convert(carColor$Value);
  }
  IsarUint8List? carCondition$Bytes;
  final carCondition$Value = object.carCondition;
  if (carCondition$Value != null) {
    carCondition$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(carCondition$Value);
  }
  IsarUint8List? carDesc$Bytes;
  final carDesc$Value = object.carDesc;
  if (carDesc$Value != null) {
    carDesc$Bytes = IsarBinaryWriter.utf8Encoder.convert(carDesc$Value);
  }
  IsarUint8List? carDownPayment$Bytes;
  final carDownPayment$Value = object.carDownPayment;
  if (carDownPayment$Value != null) {
    carDownPayment$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(carDownPayment$Value);
  }
  IsarUint8List? carFlatNumber$Bytes;
  final carFlatNumber$Value = object.carFlatNumber;
  if (carFlatNumber$Value != null) {
    carFlatNumber$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(carFlatNumber$Value);
  }
  IsarUint8List? carFuel$Bytes;
  final carFuel$Value = object.carFuel;
  if (carFuel$Value != null) {
    carFuel$Bytes = IsarBinaryWriter.utf8Encoder.convert(carFuel$Value);
  }
  IsarUint8List? carMerk$Bytes;
  final carMerk$Value = object.carMerk;
  if (carMerk$Value != null) {
    carMerk$Bytes = IsarBinaryWriter.utf8Encoder.convert(carMerk$Value);
  }
  IsarUint8List? carModel$Bytes;
  final carModel$Value = object.carModel;
  if (carModel$Value != null) {
    carModel$Bytes = IsarBinaryWriter.utf8Encoder.convert(carModel$Value);
  }
  IsarUint8List? carUnitCode$Bytes;
  final carUnitCode$Value = object.carUnitCode;
  if (carUnitCode$Value != null) {
    carUnitCode$Bytes = IsarBinaryWriter.utf8Encoder.convert(carUnitCode$Value);
  }
  IsarUint8List? carYear$Bytes;
  final carYear$Value = object.carYear;
  if (carYear$Value != null) {
    carYear$Bytes = IsarBinaryWriter.utf8Encoder.convert(carYear$Value);
  }
  final size = (staticSize +
      3 +
      (carColor$Bytes?.length ?? 0) +
      3 +
      (carCondition$Bytes?.length ?? 0) +
      3 +
      (carDesc$Bytes?.length ?? 0) +
      3 +
      (carDownPayment$Bytes?.length ?? 0) +
      3 +
      (carFlatNumber$Bytes?.length ?? 0) +
      3 +
      (carFuel$Bytes?.length ?? 0) +
      3 +
      (carMerk$Bytes?.length ?? 0) +
      3 +
      (carModel$Bytes?.length ?? 0) +
      3 +
      (carUnitCode$Bytes?.length ?? 0) +
      3 +
      (carYear$Bytes?.length ?? 0)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeByteList(offsets[0], carColor$Bytes);
  writer.writeByteList(offsets[1], carCondition$Bytes);
  writer.writeByteList(offsets[2], carDesc$Bytes);
  writer.writeByteList(offsets[3], carDownPayment$Bytes);
  writer.writeByteList(offsets[4], carFlatNumber$Bytes);
  writer.writeByteList(offsets[5], carFuel$Bytes);
  writer.writeLong(offsets[6], object.carKilomoter);
  writer.writeByteList(offsets[7], carMerk$Bytes);
  writer.writeByteList(offsets[8], carModel$Bytes);
  writer.writeDouble(offsets[9], object.carPrice);
  writer.writeByteList(offsets[10], carUnitCode$Bytes);
  writer.writeByteList(offsets[11], carYear$Bytes);
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
      throw IsarError('Illegal propertyIndex');
  }
}

Object _carSerializeWeb(IsarCollection<Car> collection, Car object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'carColor', object.carColor);
  IsarNative.jsObjectSet(jsObj, r'carCondition', object.carCondition);
  IsarNative.jsObjectSet(jsObj, r'carDesc', object.carDesc);
  IsarNative.jsObjectSet(jsObj, r'carDownPayment', object.carDownPayment);
  IsarNative.jsObjectSet(jsObj, r'carFlatNumber', object.carFlatNumber);
  IsarNative.jsObjectSet(jsObj, r'carFuel', object.carFuel);
  IsarNative.jsObjectSet(jsObj, r'carId', object.carId);
  IsarNative.jsObjectSet(jsObj, r'carKilomoter', object.carKilomoter);
  IsarNative.jsObjectSet(jsObj, r'carMerk', object.carMerk);
  IsarNative.jsObjectSet(jsObj, r'carModel', object.carModel);
  IsarNative.jsObjectSet(jsObj, r'carPrice', object.carPrice);
  IsarNative.jsObjectSet(jsObj, r'carUnitCode', object.carUnitCode);
  IsarNative.jsObjectSet(jsObj, r'carYear', object.carYear);
  return jsObj;
}

Car _carDeserializeWeb(IsarCollection<Car> collection, Object jsObj) {
  final object = Car();
  object.carColor = IsarNative.jsObjectGet(jsObj, r'carColor');
  object.carCondition = IsarNative.jsObjectGet(jsObj, r'carCondition');
  object.carDesc = IsarNative.jsObjectGet(jsObj, r'carDesc');
  object.carDownPayment = IsarNative.jsObjectGet(jsObj, r'carDownPayment');
  object.carFlatNumber = IsarNative.jsObjectGet(jsObj, r'carFlatNumber');
  object.carFuel = IsarNative.jsObjectGet(jsObj, r'carFuel');
  object.carId = IsarNative.jsObjectGet(jsObj, r'carId');
  object.carKilomoter = IsarNative.jsObjectGet(jsObj, r'carKilomoter') ??
      (double.negativeInfinity as int);
  object.carMerk = IsarNative.jsObjectGet(jsObj, r'carMerk');
  object.carModel = IsarNative.jsObjectGet(jsObj, r'carModel');
  object.carPrice =
      IsarNative.jsObjectGet(jsObj, r'carPrice') ?? double.negativeInfinity;
  object.carUnitCode = IsarNative.jsObjectGet(jsObj, r'carUnitCode');
  object.carYear = IsarNative.jsObjectGet(jsObj, r'carYear');
  return object;
}

P _carDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'carColor':
      return (IsarNative.jsObjectGet(jsObj, r'carColor')) as P;
    case r'carCondition':
      return (IsarNative.jsObjectGet(jsObj, r'carCondition')) as P;
    case r'carDesc':
      return (IsarNative.jsObjectGet(jsObj, r'carDesc')) as P;
    case r'carDownPayment':
      return (IsarNative.jsObjectGet(jsObj, r'carDownPayment')) as P;
    case r'carFlatNumber':
      return (IsarNative.jsObjectGet(jsObj, r'carFlatNumber')) as P;
    case r'carFuel':
      return (IsarNative.jsObjectGet(jsObj, r'carFuel')) as P;
    case r'carId':
      return (IsarNative.jsObjectGet(jsObj, r'carId')) as P;
    case r'carKilomoter':
      return (IsarNative.jsObjectGet(jsObj, r'carKilomoter') ??
          (double.negativeInfinity as int)) as P;
    case r'carMerk':
      return (IsarNative.jsObjectGet(jsObj, r'carMerk')) as P;
    case r'carModel':
      return (IsarNative.jsObjectGet(jsObj, r'carModel')) as P;
    case r'carPrice':
      return (IsarNative.jsObjectGet(jsObj, r'carPrice') ??
          double.negativeInfinity) as P;
    case r'carUnitCode':
      return (IsarNative.jsObjectGet(jsObj, r'carUnitCode')) as P;
    case r'carYear':
      return (IsarNative.jsObjectGet(jsObj, r'carYear')) as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _carAttachLinks(IsarCollection<dynamic> col, int id, Car object) {}

extension CarQueryWhereSort on QueryBuilder<Car, Car, QWhere> {
  QueryBuilder<Car, Car, QAfterWhere> anyCarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CarQueryWhere on QueryBuilder<Car, Car, QWhereClause> {
  QueryBuilder<Car, Car, QAfterWhereClause> carIdEqualTo(int carId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: carId,
        upper: carId,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdNotEqualTo(int carId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: carId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: carId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: carId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: carId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdGreaterThan(int carId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: carId, includeLower: include),
      );
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdLessThan(int carId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: carId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Car, Car, QAfterWhereClause> carIdBetween(
    int lowerCarId,
    int upperCarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerCarId,
        includeLower: includeLower,
        upper: upperCarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CarQueryFilter on QueryBuilder<Car, Car, QFilterCondition> {
  QueryBuilder<Car, Car, QAfterFilterCondition> carColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carColor',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carColorMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carCondition',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carCondition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carConditionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carCondition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carDesc',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carDesc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDescMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carDesc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carDownPayment',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carDownPayment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carDownPayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carDownPaymentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carDownPayment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carFlatNumber',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carFlatNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carFlatNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFlatNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carFlatNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carFuel',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carFuel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carFuel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carFuelMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carFuel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carKilomoter',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carKilomoter',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carKilomoter',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carKilomoterBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carKilomoter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carMerk',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carMerk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carMerk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carMerkMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carMerk',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carModel',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carModel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carModelMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carModel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carPrice',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceLessThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'carPrice',
        value: value,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carPriceBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carPrice',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carUnitCode',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carUnitCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carUnitCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carUnitCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carUnitCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carYear',
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carYear',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carYear',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Car, Car, QAfterFilterCondition> carYearMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carYear',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension CarQueryLinks on QueryBuilder<Car, Car, QFilterCondition> {}

extension CarQueryWhereSortBy on QueryBuilder<Car, Car, QSortBy> {
  QueryBuilder<Car, Car, QAfterSortBy> sortByCarColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carColor', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carColor', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carCondition', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carCondition', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDesc', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDesc', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDownPayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDownPayment', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarDownPaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDownPayment', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFlatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFlatNumber', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFlatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFlatNumber', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFuel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFuel', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarFuelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFuel', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarKilomoter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carKilomoter', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarKilomoterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carKilomoter', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarMerk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carMerk', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarMerkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carMerk', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carModel', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carModel', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarUnitCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carUnitCode', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarUnitCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carUnitCode', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carYear', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> sortByCarYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carYear', Sort.desc);
    });
  }
}

extension CarQueryWhereSortThenBy on QueryBuilder<Car, Car, QSortThenBy> {
  QueryBuilder<Car, Car, QAfterSortBy> thenByCarColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carColor', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carColor', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carCondition', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carCondition', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDesc', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDesc', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDownPayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDownPayment', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarDownPaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carDownPayment', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFlatNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFlatNumber', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFlatNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFlatNumber', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFuel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFuel', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarFuelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carFuel', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarKilomoter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carKilomoter', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarKilomoterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carKilomoter', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarMerk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carMerk', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarMerkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carMerk', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carModel', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carModel', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carPrice', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarUnitCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carUnitCode', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarUnitCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carUnitCode', Sort.desc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carYear', Sort.asc);
    });
  }

  QueryBuilder<Car, Car, QAfterSortBy> thenByCarYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carYear', Sort.desc);
    });
  }
}

extension CarQueryWhereDistinct on QueryBuilder<Car, Car, QDistinct> {
  QueryBuilder<Car, Car, QDistinct> distinctByCarColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carColor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarCondition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carCondition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarDownPayment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carDownPayment',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarFlatNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carFlatNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarFuel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carFuel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarKilomoter() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carKilomoter');
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarMerk(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carMerk', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carPrice');
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarUnitCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carUnitCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Car, Car, QDistinct> distinctByCarYear(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carYear', caseSensitive: caseSensitive);
    });
  }
}

extension CarQueryProperty on QueryBuilder<Car, Car, QQueryProperty> {
  QueryBuilder<Car, int, QQueryOperations> carIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carId');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carColor');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carConditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carCondition');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carDesc');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carDownPaymentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carDownPayment');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carFlatNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carFlatNumber');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carFuelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carFuel');
    });
  }

  QueryBuilder<Car, int, QQueryOperations> carKilomoterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carKilomoter');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carMerkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carMerk');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carModel');
    });
  }

  QueryBuilder<Car, double, QQueryOperations> carPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carPrice');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carUnitCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carUnitCode');
    });
  }

  QueryBuilder<Car, String?, QQueryOperations> carYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carYear');
    });
  }
}
