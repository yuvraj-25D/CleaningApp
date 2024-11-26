import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonthlyreportRecord extends FirestoreRecord {
  MonthlyreportRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "roomNo" field.
  String? _roomNo;
  String get roomNo => _roomNo ?? '';
  bool hasRoomNo() => _roomNo != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  bool hasFloor() => _floor != null;

  void _initializeFields() {
    _roomNo = snapshotData['roomNo'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _status = snapshotData['status'] as bool?;
    _floor = snapshotData['floor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('monthlyreport');

  static Stream<MonthlyreportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonthlyreportRecord.fromSnapshot(s));

  static Future<MonthlyreportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MonthlyreportRecord.fromSnapshot(s));

  static MonthlyreportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MonthlyreportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonthlyreportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonthlyreportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonthlyreportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonthlyreportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonthlyreportRecordData({
  String? roomNo,
  DateTime? date,
  bool? status,
  String? floor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'roomNo': roomNo,
      'date': date,
      'status': status,
      'floor': floor,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonthlyreportRecordDocumentEquality
    implements Equality<MonthlyreportRecord> {
  const MonthlyreportRecordDocumentEquality();

  @override
  bool equals(MonthlyreportRecord? e1, MonthlyreportRecord? e2) {
    return e1?.roomNo == e2?.roomNo &&
        e1?.date == e2?.date &&
        e1?.status == e2?.status &&
        e1?.floor == e2?.floor;
  }

  @override
  int hash(MonthlyreportRecord? e) =>
      const ListEquality().hash([e?.roomNo, e?.date, e?.status, e?.floor]);

  @override
  bool isValidKey(Object? o) => o is MonthlyreportRecord;
}
