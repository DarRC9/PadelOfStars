import '../database.dart';

class TablaGruposTable extends SupabaseTable<TablaGruposRow> {
  @override
  String get tableName => 'TablaGrupos';

  @override
  TablaGruposRow createRow(Map<String, dynamic> data) => TablaGruposRow(data);
}

class TablaGruposRow extends SupabaseDataRow {
  TablaGruposRow(super.data);

  @override
  SupabaseTable get table => TablaGruposTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get idGrupo => getField<int>('idGrupo')!;
  set idGrupo(int value) => setField<int>('idGrupo', value);

  int? get idPareja => getField<int>('idPareja');
  set idPareja(int? value) => setField<int>('idPareja', value);

  int get puntos => getField<int>('Puntos')!;
  set puntos(int value) => setField<int>('Puntos', value);
}
