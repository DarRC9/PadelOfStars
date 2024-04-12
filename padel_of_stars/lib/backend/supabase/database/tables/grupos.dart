import '../database.dart';

class GruposTable extends SupabaseTable<GruposRow> {
  @override
  String get tableName => 'Grupos';

  @override
  GruposRow createRow(Map<String, dynamic> data) => GruposRow(data);
}

class GruposRow extends SupabaseDataRow {
  GruposRow(super.data);

  @override
  SupabaseTable get table => GruposTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get idCatTor => getField<int>('idCatTor')!;
  set idCatTor(int value) => setField<int>('idCatTor', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);
}
