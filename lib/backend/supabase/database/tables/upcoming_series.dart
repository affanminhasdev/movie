import '../database.dart';

class UpcomingSeriesTable extends SupabaseTable<UpcomingSeriesRow> {
  @override
  String get tableName => 'Upcoming Series';

  @override
  UpcomingSeriesRow createRow(Map<String, dynamic> data) =>
      UpcomingSeriesRow(data);
}

class UpcomingSeriesRow extends SupabaseDataRow {
  UpcomingSeriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpcomingSeriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get thumbnail => getField<String>('thumbnail');
  set thumbnail(String? value) => setField<String>('thumbnail', value);

  String? get collectionId => getField<String>('collection_id');
  set collectionId(String? value) => setField<String>('collection_id', value);
}
