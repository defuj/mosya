// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/models.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 2224921072876291687),
      name: 'User',
      lastPropertyId: const IdUid(12, 5694907018011456665),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(7, 6419662327493668389),
            name: 'userId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(8, 1309811587744613598),
            name: 'userName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 7745694444733614953),
            name: 'userEmail',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 7769331950300218825),
            name: 'userPhone',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1701624325466522002),
            name: 'userPassword',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5694907018011456665),
            name: 'userPicture',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 3489657266866686942),
      name: 'Car',
      lastPropertyId: const IdUid(26, 5615302390500950611),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(14, 1516793578926445089),
            name: 'carId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(15, 2840556848304467255),
            name: 'carMerk',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5418695692770189289),
            name: 'carModel',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 3725846933351436665),
            name: 'carColor',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 7199701360235582013),
            name: 'carYear',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 2796434960403972020),
            name: 'carKilomoter',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 1972400264640492557),
            name: 'carFuel',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 1648326668963977277),
            name: 'carPrice',
            type: 8,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 3841292708280295572),
            name: 'carCondition',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 3909088751211117797),
            name: 'carDownPayment',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 8118477694700598484),
            name: 'carUnitCode',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 212158060016563083),
            name: 'carFlatNumber',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 5615302390500950611),
            name: 'carDesc',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 7138760474270620175),
      name: 'CarImage',
      lastPropertyId: const IdUid(3, 1796531514329971311),
      flags: 2,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1949284953744044805),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7856552604690501072),
            name: 'carId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1796531514329971311),
            name: 'picture',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 7138760474270620175),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        4440133288140661164,
        6177125651460955653,
        4791848364529822128,
        2053928299080155459,
        4605191901741331425,
        2375375682124276521,
        9152768924121620487,
        2733196442954964860,
        4030010991724973116,
        7670678882126563510,
        61950080304617006,
        5829484930665141219,
        8962280186919397177,
        8060676905334196854,
        8875992064605768544,
        910122354658714668,
        3237205819677756809,
        4270299824964292171,
        3406967608266904494
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    User: EntityDefinition<User>(
        model: _entities[0],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.userId,
        setId: (User object, int id) {
          object.userId = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final userNameOffset = object.userName == null
              ? null
              : fbb.writeString(object.userName!);
          final userEmailOffset = object.userEmail == null
              ? null
              : fbb.writeString(object.userEmail!);
          final userPhoneOffset = object.userPhone == null
              ? null
              : fbb.writeString(object.userPhone!);
          final userPasswordOffset = object.userPassword == null
              ? null
              : fbb.writeString(object.userPassword!);
          final userPictureOffset = object.userPicture == null
              ? null
              : fbb.writeString(object.userPicture!);
          fbb.startTable(13);
          fbb.addInt64(6, object.userId);
          fbb.addOffset(7, userNameOffset);
          fbb.addOffset(8, userEmailOffset);
          fbb.addOffset(9, userPhoneOffset);
          fbb.addOffset(10, userPasswordOffset);
          fbb.addOffset(11, userPictureOffset);
          fbb.finish(fbb.endTable());
          return object.userId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = User(
              userId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0),
              userName: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 18),
              userEmail: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 20),
              userPhone: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 22),
              userPassword: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 24))
            ..userPicture = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 26);

          return object;
        }),
    Car: EntityDefinition<Car>(
        model: _entities[1],
        toOneRelations: (Car object) => [],
        toManyRelations: (Car object) => {},
        getId: (Car object) => object.carId,
        setId: (Car object, int id) {
          object.carId = id;
        },
        objectToFB: (Car object, fb.Builder fbb) {
          final carMerkOffset =
              object.carMerk == null ? null : fbb.writeString(object.carMerk!);
          final carModelOffset = object.carModel == null
              ? null
              : fbb.writeString(object.carModel!);
          final carColorOffset = object.carColor == null
              ? null
              : fbb.writeString(object.carColor!);
          final carYearOffset =
              object.carYear == null ? null : fbb.writeString(object.carYear!);
          final carFuelOffset =
              object.carFuel == null ? null : fbb.writeString(object.carFuel!);
          final carConditionOffset = object.carCondition == null
              ? null
              : fbb.writeString(object.carCondition!);
          final carDownPaymentOffset = object.carDownPayment == null
              ? null
              : fbb.writeString(object.carDownPayment!);
          final carUnitCodeOffset = object.carUnitCode == null
              ? null
              : fbb.writeString(object.carUnitCode!);
          final carFlatNumberOffset = object.carFlatNumber == null
              ? null
              : fbb.writeString(object.carFlatNumber!);
          final carDescOffset =
              object.carDesc == null ? null : fbb.writeString(object.carDesc!);
          fbb.startTable(27);
          fbb.addInt64(13, object.carId);
          fbb.addOffset(14, carMerkOffset);
          fbb.addOffset(15, carModelOffset);
          fbb.addOffset(16, carColorOffset);
          fbb.addOffset(17, carYearOffset);
          fbb.addInt64(18, object.carKilomoter);
          fbb.addOffset(19, carFuelOffset);
          fbb.addFloat64(20, object.carPrice);
          fbb.addOffset(21, carConditionOffset);
          fbb.addOffset(22, carDownPaymentOffset);
          fbb.addOffset(23, carUnitCodeOffset);
          fbb.addOffset(24, carFlatNumberOffset);
          fbb.addOffset(25, carDescOffset);
          fbb.finish(fbb.endTable());
          return object.carId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Car(
              carId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 30, 0),
              carMerk: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 32),
              carModel: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 34),
              carColor: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 36),
              carFuel: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 42),
              carPrice:
                  const fb.Float64Reader().vTableGet(buffer, rootOffset, 44, 0),
              carCondition: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 46),
              carDownPayment: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 48),
              carUnitCode:
                  const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 50),
              carDesc: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 54),
              carFlatNumber: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 52),
              carYear: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 38),
              carKilomoter: const fb.Int64Reader().vTableGet(buffer, rootOffset, 40, 0));

          return object;
        }),
    CarImage: EntityDefinition<CarImage>(
        model: _entities[2],
        toOneRelations: (CarImage object) => [],
        toManyRelations: (CarImage object) => {},
        getId: (CarImage object) => object.id,
        setId: (CarImage object, int id) {
          object.id = id;
        },
        objectToFB: (CarImage object, fb.Builder fbb) {
          final pictureOffset =
              object.picture == null ? null : fbb.writeString(object.picture!);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.carId);
          fbb.addOffset(2, pictureOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = CarImage()
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0)
            ..carId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 6)
            ..picture = const fb.StringReader(asciiOptimization: true)
                .vTableGetNullable(buffer, rootOffset, 8);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.userId]
  static final userId = QueryIntegerProperty<User>(_entities[0].properties[0]);

  /// see [User.userName]
  static final userName = QueryStringProperty<User>(_entities[0].properties[1]);

  /// see [User.userEmail]
  static final userEmail =
      QueryStringProperty<User>(_entities[0].properties[2]);

  /// see [User.userPhone]
  static final userPhone =
      QueryStringProperty<User>(_entities[0].properties[3]);

  /// see [User.userPassword]
  static final userPassword =
      QueryStringProperty<User>(_entities[0].properties[4]);

  /// see [User.userPicture]
  static final userPicture =
      QueryStringProperty<User>(_entities[0].properties[5]);
}

/// [Car] entity fields to define ObjectBox queries.
class Car_ {
  /// see [Car.carId]
  static final carId = QueryIntegerProperty<Car>(_entities[1].properties[0]);

  /// see [Car.carMerk]
  static final carMerk = QueryStringProperty<Car>(_entities[1].properties[1]);

  /// see [Car.carModel]
  static final carModel = QueryStringProperty<Car>(_entities[1].properties[2]);

  /// see [Car.carColor]
  static final carColor = QueryStringProperty<Car>(_entities[1].properties[3]);

  /// see [Car.carYear]
  static final carYear = QueryStringProperty<Car>(_entities[1].properties[4]);

  /// see [Car.carKilomoter]
  static final carKilomoter =
      QueryIntegerProperty<Car>(_entities[1].properties[5]);

  /// see [Car.carFuel]
  static final carFuel = QueryStringProperty<Car>(_entities[1].properties[6]);

  /// see [Car.carPrice]
  static final carPrice = QueryDoubleProperty<Car>(_entities[1].properties[7]);

  /// see [Car.carCondition]
  static final carCondition =
      QueryStringProperty<Car>(_entities[1].properties[8]);

  /// see [Car.carDownPayment]
  static final carDownPayment =
      QueryStringProperty<Car>(_entities[1].properties[9]);

  /// see [Car.carUnitCode]
  static final carUnitCode =
      QueryStringProperty<Car>(_entities[1].properties[10]);

  /// see [Car.carFlatNumber]
  static final carFlatNumber =
      QueryStringProperty<Car>(_entities[1].properties[11]);

  /// see [Car.carDesc]
  static final carDesc = QueryStringProperty<Car>(_entities[1].properties[12]);
}

/// [CarImage] entity fields to define ObjectBox queries.
class CarImage_ {
  /// see [CarImage.id]
  static final id = QueryIntegerProperty<CarImage>(_entities[2].properties[0]);

  /// see [CarImage.carId]
  static final carId =
      QueryIntegerProperty<CarImage>(_entities[2].properties[1]);

  /// see [CarImage.picture]
  static final picture =
      QueryStringProperty<CarImage>(_entities[2].properties[2]);
}