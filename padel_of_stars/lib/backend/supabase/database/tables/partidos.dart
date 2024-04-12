import '../database.dart';

class PartidosTable extends SupabaseTable<PartidosRow> {
  @override
  String get tableName => 'Partidos';

  @override
  PartidosRow createRow(Map<String, dynamic> data) => PartidosRow(data);
}

class PartidosRow extends SupabaseDataRow {
  PartidosRow(super.data);

  @override
  SupabaseTable get table => PartidosTable();

  int get idPartido => getField<int>('idPartido')!;
  set idPartido(int value) => setField<int>('idPartido', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idPareja1 => getField<int>('idPareja1')!;
  set idPareja1(int value) => setField<int>('idPareja1', value);

  int get idPareja2 => getField<int>('idPareja2')!;
  set idPareja2(int value) => setField<int>('idPareja2', value);

  String? get resultado => getField<String>('resultado');
  set resultado(String? value) => setField<String>('resultado', value);

  int? get idGrupo => getField<int>('idGrupo');
  set idGrupo(int? value) => setField<int>('idGrupo', value);
}
