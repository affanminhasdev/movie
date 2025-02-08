// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoItemStruct extends FFFirebaseStruct {
  VideoItemStruct({
    int? videoLibraryId,
    String? guid,
    String? title,
    int? views,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _videoLibraryId = videoLibraryId,
        _guid = guid,
        _title = title,
        _views = views,
        super(firestoreUtilData);

  // "videoLibraryId" field.
  int? _videoLibraryId;
  int get videoLibraryId => _videoLibraryId ?? 0;
  set videoLibraryId(int? val) => _videoLibraryId = val;

  void incrementVideoLibraryId(int amount) =>
      videoLibraryId = videoLibraryId + amount;

  bool hasVideoLibraryId() => _videoLibraryId != null;

  // "guid" field.
  String? _guid;
  String get guid => _guid ?? '';
  set guid(String? val) => _guid = val;

  bool hasGuid() => _guid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  set views(int? val) => _views = val;

  void incrementViews(int amount) => views = views + amount;

  bool hasViews() => _views != null;

  static VideoItemStruct fromMap(Map<String, dynamic> data) => VideoItemStruct(
        videoLibraryId: castToType<int>(data['videoLibraryId']),
        guid: data['guid'] as String?,
        title: data['title'] as String?,
        views: castToType<int>(data['views']),
      );

  static VideoItemStruct? maybeFromMap(dynamic data) => data is Map
      ? VideoItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'videoLibraryId': _videoLibraryId,
        'guid': _guid,
        'title': _title,
        'views': _views,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => toMap();
  static VideoItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      fromMap(data);

  @override
  String toString() => 'VideoItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideoItemStruct &&
        videoLibraryId == other.videoLibraryId &&
        guid == other.guid &&
        title == other.title &&
        views == other.views;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([videoLibraryId, guid, title, views]);
}

VideoItemStruct createVideoItemStruct({
  int? videoLibraryId,
  String? guid,
  String? title,
  int? views,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideoItemStruct(
      videoLibraryId: videoLibraryId,
      guid: guid,
      title: title,
      views: views,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideoItemStruct? updateVideoItemStruct(
  VideoItemStruct? videoItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    videoItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideoItemStructData(
  Map<String, dynamic> firestoreData,
  VideoItemStruct? videoItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (videoItem == null) {
    return;
  }
  if (videoItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && videoItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videoItemData = getVideoItemFirestoreData(videoItem, forFieldValue);
  final nestedData = videoItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = videoItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideoItemFirestoreData(
  VideoItemStruct? videoItem, [
  bool forFieldValue = false,
]) {
  if (videoItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(videoItem.toMap());

  // Add any Firestore field values
  videoItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideoItemListFirestoreData(
  List<VideoItemStruct>? videoItems,
) =>
    videoItems?.map((e) => getVideoItemFirestoreData(e, true)).toList() ?? [];
