import '../database.dart';

class EpisodesTable extends SupabaseTable<EpisodesRow> {
  @override
  String get tableName => 'episodes';

  @override
  EpisodesRow createRow(Map<String, dynamic> data) => EpisodesRow(data);
}

class EpisodesRow extends SupabaseDataRow {
  EpisodesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EpisodesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get seriesId => getField<int>('series_id');
  set seriesId(int? value) => setField<int>('series_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get videoUrl => getField<String>('video_url')!;
  set videoUrl(String value) => setField<String>('video_url', value);

  int get episodeNumber => getField<int>('episode_number')!;
  set episodeNumber(int value) => setField<int>('episode_number', value);

  bool get isTrailer => getField<bool>('is_trailer')!;
  set isTrailer(bool value) => setField<bool>('is_trailer', value);
}
