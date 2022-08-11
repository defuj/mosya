// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetUserCollection on Isar {
  IsarCollection<User> get users => collection();
}

const UserSchema = CollectionSchema(
  name: r'User',
  schema:
      r'{"name":"User","idName":"userId","properties":[{"name":"userEmail","type":"String"},{"name":"userName","type":"String"},{"name":"userPassword","type":"String"},{"name":"userPhone","type":"String"},{"name":"userPicture","type":"String"}],"indexes":[],"links":[]}',
  idName: r'userId',
  propertyIds: {
    r'userEmail': 0,
    r'userName': 1,
    r'userPassword': 2,
    r'userPhone': 3,
    r'userPicture': 4
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
  version: 4,
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

List<IsarLinkBase<dynamic>> _userGetLinks(User object) {
  return [];
}

void _userSerializeNative(IsarCollection<User> collection, IsarCObject cObj,
    User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  IsarUint8List? userEmail$Bytes;
  final userEmail$Value = object.userEmail;
  if (userEmail$Value != null) {
    userEmail$Bytes = IsarBinaryWriter.utf8Encoder.convert(userEmail$Value);
  }
  IsarUint8List? userName$Bytes;
  final userName$Value = object.userName;
  if (userName$Value != null) {
    userName$Bytes = IsarBinaryWriter.utf8Encoder.convert(userName$Value);
  }
  IsarUint8List? userPassword$Bytes;
  final userPassword$Value = object.userPassword;
  if (userPassword$Value != null) {
    userPassword$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(userPassword$Value);
  }
  IsarUint8List? userPhone$Bytes;
  final userPhone$Value = object.userPhone;
  if (userPhone$Value != null) {
    userPhone$Bytes = IsarBinaryWriter.utf8Encoder.convert(userPhone$Value);
  }
  IsarUint8List? userPicture$Bytes;
  final userPicture$Value = object.userPicture;
  if (userPicture$Value != null) {
    userPicture$Bytes = IsarBinaryWriter.utf8Encoder.convert(userPicture$Value);
  }
  final size = (staticSize +
      3 +
      (userEmail$Bytes?.length ?? 0) +
      3 +
      (userName$Bytes?.length ?? 0) +
      3 +
      (userPassword$Bytes?.length ?? 0) +
      3 +
      (userPhone$Bytes?.length ?? 0) +
      3 +
      (userPicture$Bytes?.length ?? 0)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeByteList(offsets[0], userEmail$Bytes);
  writer.writeByteList(offsets[1], userName$Bytes);
  writer.writeByteList(offsets[2], userPassword$Bytes);
  writer.writeByteList(offsets[3], userPhone$Bytes);
  writer.writeByteList(offsets[4], userPicture$Bytes);
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
      throw IsarError('Illegal propertyIndex');
  }
}

Object _userSerializeWeb(IsarCollection<User> collection, User object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'userEmail', object.userEmail);
  IsarNative.jsObjectSet(jsObj, r'userId', object.userId);
  IsarNative.jsObjectSet(jsObj, r'userName', object.userName);
  IsarNative.jsObjectSet(jsObj, r'userPassword', object.userPassword);
  IsarNative.jsObjectSet(jsObj, r'userPhone', object.userPhone);
  IsarNative.jsObjectSet(jsObj, r'userPicture', object.userPicture);
  return jsObj;
}

User _userDeserializeWeb(IsarCollection<User> collection, Object jsObj) {
  final object = User();
  object.userEmail = IsarNative.jsObjectGet(jsObj, r'userEmail');
  object.userId = IsarNative.jsObjectGet(jsObj, r'userId');
  object.userName = IsarNative.jsObjectGet(jsObj, r'userName');
  object.userPassword = IsarNative.jsObjectGet(jsObj, r'userPassword');
  object.userPhone = IsarNative.jsObjectGet(jsObj, r'userPhone');
  object.userPicture = IsarNative.jsObjectGet(jsObj, r'userPicture');
  return object;
}

P _userDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'userEmail':
      return (IsarNative.jsObjectGet(jsObj, r'userEmail')) as P;
    case r'userId':
      return (IsarNative.jsObjectGet(jsObj, r'userId')) as P;
    case r'userName':
      return (IsarNative.jsObjectGet(jsObj, r'userName')) as P;
    case r'userPassword':
      return (IsarNative.jsObjectGet(jsObj, r'userPassword')) as P;
    case r'userPhone':
      return (IsarNative.jsObjectGet(jsObj, r'userPhone')) as P;
    case r'userPicture':
      return (IsarNative.jsObjectGet(jsObj, r'userPicture')) as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _userAttachLinks(IsarCollection<dynamic> col, int id, User object) {}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> userIdEqualTo(int userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: userId,
        upper: userId,
      ));
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdNotEqualTo(int userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: userId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: userId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: userId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: userId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdGreaterThan(int userId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: userId, includeLower: include),
      );
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdLessThan(int userId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: userId, includeUpper: include),
      );
    });
  }

  QueryBuilder<User, User, QAfterWhereClause> userIdBetween(
    int lowerUserId,
    int upperUserId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerUserId,
        includeLower: includeLower,
        upper: upperUserId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> userEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userEmail',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userName',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userPassword',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userPassword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPasswordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userPassword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userPhone',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPhoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userPicture',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userPicture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> userPictureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userPicture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByUserEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPassword', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPassword', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPhone', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPhone', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPicture', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUserPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPicture', Sort.desc);
    });
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByUserEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPassword', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPassword', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPhone', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPhone', Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPicture', Sort.asc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUserPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userPicture', Sort.desc);
    });
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByUserEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userPassword', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userPhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QDistinct> distinctByUserPicture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userPicture', caseSensitive: caseSensitive);
    });
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> userEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userEmail');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> userPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userPassword');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> userPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userPhone');
    });
  }

  QueryBuilder<User, String?, QQueryOperations> userPictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userPicture');
    });
  }
}
