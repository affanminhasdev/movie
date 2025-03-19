import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get profileImage => getField<String>('profile_image');
  set profileImage(String? value) => setField<String>('profile_image', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get isSignedIn => getField<bool>('is_signed_in');
  set isSignedIn(bool? value) => setField<bool>('is_signed_in', value);

  bool? get isSubscribed => getField<bool>('is_subscribed');
  set isSubscribed(bool? value) => setField<bool>('is_subscribed', value);

  DateTime? get subscribedAt => getField<DateTime>('subscribed_at');
  set subscribedAt(DateTime? value) =>
      setField<DateTime>('subscribed_at', value);

  DateTime? get subscriptionExpiresAt =>
      getField<DateTime>('subscription_expires_at');
  set subscriptionExpiresAt(DateTime? value) =>
      setField<DateTime>('subscription_expires_at', value);
}
