// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetUserCollection on Isar {
  IsarCollection<User> get users => getCollection();
}

const UserSchema = CollectionSchema(
  name: 'User',
  schema:
      '{"name":"User","idName":"userId","properties":[{"name":"userEmail","type":"String"},{"name":"userName","type":"String"},{"name":"userPassword","type":"String"},{"name":"userPhone","type":"String"},{"name":"userPicture","type":"String"}],"indexes":[],"links":[]}',
  idName: 'userId',
  propertyIds: {
    'userEmail': 0,
    'userName': 1,
    'userPassword': 2,
    'userPhone': 3,
    'userPicture': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _userGetId,
  setId: _userSetId,
  getLinks: _userGetLinks,
  attachLinks: _userAttachLinks,
  serializeNative: _userSerializeNative,
  deserializeNative: _userDeserializeNative,
  deserializePropNative: _userDeserializePropNative,
  serializeWeb: _userSerializeWeb,
  deserializeWeb: _userDeserializeWeb,
  deserializePropWeb: _userDeserializePropWeb,
  version: 3,
);

int? _userGetId(User object) {
  if (object.userId == Isar.autoIncrement) {
    return null;
  } else {
    return object.userId;
  }
}

void _userSetId(User object, int id) {
  object.userId = id;
}

List<IsarLinkBase> _userGetLinks(User object) {
  return [];
}

void _userSerializeNative(IsarCollection<User> collection, IsarRawObject rawObj,
    User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.userEmail;
  IsarUint8List? _userEmail;
  if (value0 != null) {
    _userEmail = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_userEmail?.length ?? 0) as int;
  final value1 = object.userName;
  IsarUint8List? _userName;
  if (value1 != null) {
    _userName = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_userName?.length ?? 0) as int;
  final value2 = object.userPassword;
  IsarUint8List? _userPassword;
  if (value2 != null) {
    _userPassword = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_userPassword?.length ?? 0) as int;
  final value3 = object.userPhone;
  IsarUint8List? _userPhone;
  if (value3 != null) {
    _userPhone = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_userPhone?.length ?? 0) as int;
  final value4 = object.userPicture;
  IsarUint8List? _userPicture;
  if (value4 != null) {
    _userPicture = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_userPicture?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _userEmail);
  writer.writeBytes(offsets[1], _userName);
  writer.writeBytes(offsets[2], _userPassword);
  writer.writeBytes(offsets[3], _userPhone);
  writer.writeBytes(offsets[4], _userPicture);
}

User _userDeserializeNative(IsarCollection<User> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = User();
  object.userEmail = reader.readStringOrNull(offsets[0]);
  object.userId = id;
  object.userName = reader.readStringOrNull(offsets[1]);
  object.userPassword = reader.readStringOrNull(offsets[2]);
  object.userPhone = reader.readStringOrNull(offsets[3]);
  object.userPicture = reader.readStringOrNull(offsets[4]);
  return object;
}

P _userDeserializePropNative<P>(
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
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _userSerializeWeb(IsarCollection<User> collection, User object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'userEmail', object.userEmail);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  IsarNative.jsObjectSet(jsObj, 'userName', object.userName);
  IsarNative.jsObjectSet(jsObj, 'userPassword', object.userPassword);
  IsarNative.jsObjectSet(jsObj, 'userPhone', object.userPhone);
  IsarNative.jsObjectSet(jsObj, 'userPicture', object.userPicture);
  return jsObj;
}

User _userDeserializeWeb(IsarCollection<User> collection, dynamic jsObj) {
  final object = User();
  object.userEmail = IsarNative.jsObjectGet(jsObj, 'userEmail');
  object.userId = IsarNative.jsObjectGet(jsObj, 'userId');
  object.userName = IsarNative.jsObjectGet(jsObj, 'userName');
  object.userPassword = IsarNative.jsObjectGet(jsObj, 'userPassword');
  object.userPhone = IsarNative.jsObjectGet(jsObj, 'userPhone');
  object.userPicture = IsarNative.jsObjectGet(jsObj, 'userPicture');
  return object;
}

P _userDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'userEmail':
      return (IsarNative.jsObjectGet(jsObj, 'userEmail')) as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId')) as P;
    case 'userName':
      return (IsarNative.jsObjectGet(jsObj, 'userName')) as P;
    case 'userPassword':
      return (IsarNative.jsObjectGet(jsObj, 'userPassword')) as P;
    case 'userPhone':
      return (IsarNative.jsObjectGet(jsObj, 'userPhone')) as P;
    case 'userPicture':
      return (IsarNative.jsObjectGet(jsObj, 'userPicture')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _userAttachLinks(IsarCollection col, int id, User object) {}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyUserId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> userIdEqualTo(int userId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: userId,
      includeLower: true,
      upper: userId,
      includeUpper: true,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdNotEqualTo(int userId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: userId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: userId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: userId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: userId, includeUpper: false),
      );
    }
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdGreaterThan(int userId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: userId, includeLower: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdLessThan(int userId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: userId, includeUpper: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdBetween(
    int lowerUserId,
    int upperUserId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerUserId,
      includeLower: includeLower,
      upper: upperUserId,
      includeUpper: includeUpper,
    ));
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> userEmailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userEmail',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userEmail',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userEmail',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userId',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userId',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userName',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userPassword',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userPassword',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userPassword',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userPassword',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userPhone',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userPhone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userPhone',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'userPicture',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'userPicture',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'userPicture',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'userPicture',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByUserEmail() {
    return addSortByInternal('userEmail', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserEmailDesc() {
    return addSortByInternal('userEmail', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserId() {
    return addSortByInternal('userId', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserIdDesc() {
    return addSortByInternal('userId', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserName() {
    return addSortByInternal('userName', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserNameDesc() {
    return addSortByInternal('userName', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPassword() {
    return addSortByInternal('userPassword', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPasswordDesc() {
    return addSortByInternal('userPassword', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPhone() {
    return addSortByInternal('userPhone', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPhoneDesc() {
    return addSortByInternal('userPhone', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPicture() {
    return addSortByInternal('userPicture', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPictureDesc() {
    return addSortByInternal('userPicture', Sort.desc);
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByUserEmail() {
    return addSortByInternal('userEmail', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserEmailDesc() {
    return addSortByInternal('userEmail', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserId() {
    return addSortByInternal('userId', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserIdDesc() {
    return addSortByInternal('userId', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserName() {
    return addSortByInternal('userName', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserNameDesc() {
    return addSortByInternal('userName', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPassword() {
    return addSortByInternal('userPassword', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPasswordDesc() {
    return addSortByInternal('userPassword', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPhone() {
    return addSortByInternal('userPhone', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPhoneDesc() {
    return addSortByInternal('userPhone', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPicture() {
    return addSortByInternal('userPicture', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPictureDesc() {
    return addSortByInternal('userPicture', Sort.desc);
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByUserEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userEmail', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByUserId() {
    return addDistinctByInternal('userId');
  }

  QueryBuilder<User, User, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userName', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPassword(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userPassword', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPhone(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userPhone', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPicture(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('userPicture', caseSensitive: caseSensitive);
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, String?, QQueryOperations> userEmailProperty() {
    return addPropertyNameInternal('userEmail');
  }

  QueryBuilder<User, int?, QQueryOperations> userIdProperty() {
    return addPropertyNameInternal('userId');
  }

  QueryBuilder<User, String?, QQueryOperations> userNameProperty() {
    return addPropertyNameInternal('userName');
  }

  QueryBuilder<User, String?, QQueryOperations> userPasswordProperty() {
    return addPropertyNameInternal('userPassword');
  }

  QueryBuilder<User, String?, QQueryOperations> userPhoneProperty() {
    return addPropertyNameInternal('userPhone');
  }

  QueryBuilder<User, String?, QQueryOperations> userPictureProperty() {
    return addPropertyNameInternal('userPicture');
  }
}
