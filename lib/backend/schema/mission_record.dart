import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mission_record.g.dart';

abstract class MissionRecord
    implements Built<MissionRecord, MissionRecordBuilder> {
  static Serializer<MissionRecord> get serializer => _$missionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'date-debut')
  String get dateDebut;

  @nullable
  @BuiltValueField(wireName: 'date-fin')
  String get dateFin;

  @nullable
  String get detail;

  @nullable
  String get entreprise;

  @nullable
  String get intitule;

  @nullable
  @BuiltValueField(wireName: 'salaire-horaire')
  int get salaireHoraire;

  @nullable
  @BuiltValueField(wireName: 'salaire-total')
  int get salaireTotal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MissionRecordBuilder builder) => builder
    ..dateDebut = ''
    ..dateFin = ''
    ..detail = ''
    ..entreprise = ''
    ..intitule = ''
    ..salaireHoraire = 0
    ..salaireTotal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mission');

  static Stream<MissionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MissionRecord._();
  factory MissionRecord([void Function(MissionRecordBuilder) updates]) =
      _$MissionRecord;

  static MissionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMissionRecordData({
  String dateDebut,
  String dateFin,
  String detail,
  String entreprise,
  String intitule,
  int salaireHoraire,
  int salaireTotal,
}) =>
    serializers.toFirestore(
        MissionRecord.serializer,
        MissionRecord((m) => m
          ..dateDebut = dateDebut
          ..dateFin = dateFin
          ..detail = detail
          ..entreprise = entreprise
          ..intitule = intitule
          ..salaireHoraire = salaireHoraire
          ..salaireTotal = salaireTotal));
