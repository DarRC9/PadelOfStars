import '../database.dart';

class PadelClubsTable extends SupabaseTable<PadelClubsRow> {
  @override
  String get tableName => 'PadelClubs';

  @override
  PadelClubsRow createRow(Map<String, dynamic> data) => PadelClubsRow(data);
}

class PadelClubsRow extends SupabaseDataRow {
  PadelClubsRow(super.data);

  @override
  SupabaseTable get table => PadelClubsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  String? get direccion => getField<String>('Dirección');
  set direccion(String? value) => setField<String>('Dirección', value);

  String? get location2 => getField<String>('location2');
  set location2(String? value) => setField<String>('location2', value);

  String? get lat => getField<String>('lat');
  set lat(String? value) => setField<String>('lat', value);

  String? get long => getField<String>('long');
  set long(String? value) => setField<String>('long', value);
}
