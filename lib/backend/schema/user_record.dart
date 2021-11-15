import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  @nullable
  String get prenom;

  @nullable
  String get nom;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'date-de-naisance')
  int get dateDeNaisance;

  @nullable
  @BuiltValueField(wireName: 'numero-de-telephone')
  int get numeroDeTelephone;

  @nullable
  @BuiltValueField(wireName: 'mot-de-passe')
  String get motDePasse;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..prenom = ''
    ..nom = ''
    ..email = ''
    ..dateDeNaisance = 0
    ..numeroDeTelephone = 0
    ..motDePasse = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserRecordData({
  String prenom,
  String nom,
  String email,
  int dateDeNaisance,
  int numeroDeTelephone,
  String motDePasse,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UserRecord.serializer,
        UserRecord((u) => u
          ..prenom = prenom
          ..nom = nom
          ..email = email
          ..dateDeNaisance = dateDeNaisance
          ..numeroDeTelephone = numeroDeTelephone
          ..motDePasse = motDePasse
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
