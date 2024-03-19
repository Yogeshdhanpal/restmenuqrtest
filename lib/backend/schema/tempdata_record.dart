import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TempdataRecord extends FirestoreRecord {
  TempdataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  void _initializeFields() {
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tempdata');

  static Stream<TempdataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TempdataRecord.fromSnapshot(s));

  static Future<TempdataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TempdataRecord.fromSnapshot(s));

  static TempdataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TempdataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TempdataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TempdataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TempdataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TempdataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTempdataRecordData({
  String? firstname,
  String? lastname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
    }.withoutNulls,
  );

  return firestoreData;
}

class TempdataRecordDocumentEquality implements Equality<TempdataRecord> {
  const TempdataRecordDocumentEquality();

  @override
  bool equals(TempdataRecord? e1, TempdataRecord? e2) {
    return e1?.firstname == e2?.firstname && e1?.lastname == e2?.lastname;
  }

  @override
  int hash(TempdataRecord? e) =>
      const ListEquality().hash([e?.firstname, e?.lastname]);

  @override
  bool isValidKey(Object? o) => o is TempdataRecord;
}
