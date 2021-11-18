// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MissionRecord> _$missionRecordSerializer =
    new _$MissionRecordSerializer();

class _$MissionRecordSerializer implements StructuredSerializer<MissionRecord> {
  @override
  final Iterable<Type> types = const [MissionRecord, _$MissionRecord];
  @override
  final String wireName = 'MissionRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MissionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.dateDebut;
    if (value != null) {
      result
        ..add('date-debut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateFin;
    if (value != null) {
      result
        ..add('date-fin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detail;
    if (value != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entreprise;
    if (value != null) {
      result
        ..add('entreprise')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.intitule;
    if (value != null) {
      result
        ..add('intitule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salaireHoraire;
    if (value != null) {
      result
        ..add('salaire-horaire')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salaireTotal;
    if (value != null) {
      result
        ..add('salaire-total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MissionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MissionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'date-debut':
          result.dateDebut = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date-fin':
          result.dateFin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entreprise':
          result.entreprise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intitule':
          result.intitule = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salaire-horaire':
          result.salaireHoraire = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'salaire-total':
          result.salaireTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MissionRecord extends MissionRecord {
  @override
  final String dateDebut;
  @override
  final String dateFin;
  @override
  final String detail;
  @override
  final String entreprise;
  @override
  final String intitule;
  @override
  final int salaireHoraire;
  @override
  final int salaireTotal;
  @override
  final DocumentReference<Object> reference;

  factory _$MissionRecord([void Function(MissionRecordBuilder) updates]) =>
      (new MissionRecordBuilder()..update(updates)).build();

  _$MissionRecord._(
      {this.dateDebut,
      this.dateFin,
      this.detail,
      this.entreprise,
      this.intitule,
      this.salaireHoraire,
      this.salaireTotal,
      this.reference})
      : super._();

  @override
  MissionRecord rebuild(void Function(MissionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MissionRecordBuilder toBuilder() => new MissionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MissionRecord &&
        dateDebut == other.dateDebut &&
        dateFin == other.dateFin &&
        detail == other.detail &&
        entreprise == other.entreprise &&
        intitule == other.intitule &&
        salaireHoraire == other.salaireHoraire &&
        salaireTotal == other.salaireTotal &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, dateDebut.hashCode), dateFin.hashCode),
                            detail.hashCode),
                        entreprise.hashCode),
                    intitule.hashCode),
                salaireHoraire.hashCode),
            salaireTotal.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MissionRecord')
          ..add('dateDebut', dateDebut)
          ..add('dateFin', dateFin)
          ..add('detail', detail)
          ..add('entreprise', entreprise)
          ..add('intitule', intitule)
          ..add('salaireHoraire', salaireHoraire)
          ..add('salaireTotal', salaireTotal)
          ..add('reference', reference))
        .toString();
  }
}

class MissionRecordBuilder
    implements Builder<MissionRecord, MissionRecordBuilder> {
  _$MissionRecord _$v;

  String _dateDebut;
  String get dateDebut => _$this._dateDebut;
  set dateDebut(String dateDebut) => _$this._dateDebut = dateDebut;

  String _dateFin;
  String get dateFin => _$this._dateFin;
  set dateFin(String dateFin) => _$this._dateFin = dateFin;

  String _detail;
  String get detail => _$this._detail;
  set detail(String detail) => _$this._detail = detail;

  String _entreprise;
  String get entreprise => _$this._entreprise;
  set entreprise(String entreprise) => _$this._entreprise = entreprise;

  String _intitule;
  String get intitule => _$this._intitule;
  set intitule(String intitule) => _$this._intitule = intitule;

  int _salaireHoraire;
  int get salaireHoraire => _$this._salaireHoraire;
  set salaireHoraire(int salaireHoraire) =>
      _$this._salaireHoraire = salaireHoraire;

  int _salaireTotal;
  int get salaireTotal => _$this._salaireTotal;
  set salaireTotal(int salaireTotal) => _$this._salaireTotal = salaireTotal;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MissionRecordBuilder() {
    MissionRecord._initializeBuilder(this);
  }

  MissionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateDebut = $v.dateDebut;
      _dateFin = $v.dateFin;
      _detail = $v.detail;
      _entreprise = $v.entreprise;
      _intitule = $v.intitule;
      _salaireHoraire = $v.salaireHoraire;
      _salaireTotal = $v.salaireTotal;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MissionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MissionRecord;
  }

  @override
  void update(void Function(MissionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MissionRecord build() {
    final _$result = _$v ??
        new _$MissionRecord._(
            dateDebut: dateDebut,
            dateFin: dateFin,
            detail: detail,
            entreprise: entreprise,
            intitule: intitule,
            salaireHoraire: salaireHoraire,
            salaireTotal: salaireTotal,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
