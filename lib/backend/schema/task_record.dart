import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task_title" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  bool hasTaskTitle() => _taskTitle != null;

  // "task_descripition" field.
  String? _taskDescripition;
  String get taskDescripition => _taskDescripition ?? '';
  bool hasTaskDescripition() => _taskDescripition != null;

  // "Complete" field.
  int? _complete;
  int get complete => _complete ?? 0;
  bool hasComplete() => _complete != null;

  void _initializeFields() {
    _taskTitle = snapshotData['task_title'] as String?;
    _taskDescripition = snapshotData['task_descripition'] as String?;
    _complete = castToType<int>(snapshotData['Complete']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskRecord.fromSnapshot(s));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskRecord.fromSnapshot(s));

  static TaskRecord fromSnapshot(DocumentSnapshot snapshot) => TaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskRecordData({
  String? taskTitle,
  String? taskDescripition,
  int? complete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_title': taskTitle,
      'task_descripition': taskDescripition,
      'Complete': complete,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.taskTitle == e2?.taskTitle &&
        e1?.taskDescripition == e2?.taskDescripition &&
        e1?.complete == e2?.complete;
  }

  @override
  int hash(TaskRecord? e) => const ListEquality()
      .hash([e?.taskTitle, e?.taskDescripition, e?.complete]);

  @override
  bool isValidKey(Object? o) => o is TaskRecord;
}
