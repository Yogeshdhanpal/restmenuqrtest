import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MenucategoryRecord extends FirestoreRecord {
  MenucategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "categoryname" field.
  String? _categoryname;
  String get categoryname => _categoryname ?? '';
  bool hasCategoryname() => _categoryname != null;

  // "categoryphoto" field.
  String? _categoryphoto;
  String get categoryphoto => _categoryphoto ?? '';
  bool hasCategoryphoto() => _categoryphoto != null;

  void _initializeFields() {
    _categoryname = snapshotData['categoryname'] as String?;
    _categoryphoto = snapshotData['categoryphoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menucategory');

  static Stream<MenucategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenucategoryRecord.fromSnapshot(s));

  static Future<MenucategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenucategoryRecord.fromSnapshot(s));

  static MenucategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenucategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenucategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenucategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenucategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenucategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenucategoryRecordData({
  String? categoryname,
  String? categoryphoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoryname': categoryname,
      'categoryphoto': categoryphoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenucategoryRecordDocumentEquality
    implements Equality<MenucategoryRecord> {
  const MenucategoryRecordDocumentEquality();

  @override
  bool equals(MenucategoryRecord? e1, MenucategoryRecord? e2) {
    return e1?.categoryname == e2?.categoryname &&
        e1?.categoryphoto == e2?.categoryphoto;
  }

  @override
  int hash(MenucategoryRecord? e) =>
      const ListEquality().hash([e?.categoryname, e?.categoryphoto]);

  @override
  bool isValidKey(Object? o) => o is MenucategoryRecord;
}
