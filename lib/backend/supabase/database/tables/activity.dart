import '../database.dart';

class ActivityTable extends SupabaseTable<ActivityRow> {
  @override
  String get tableName => 'activity';

  @override
  ActivityRow createRow(Map<String, dynamic> data) => ActivityRow(data);
}

class ActivityRow extends SupabaseDataRow {
  ActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActivityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get seriesId => getField<int>('series_id');
  set seriesId(int? value) => setField<int>('series_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
