import '../database.dart';

class EstadosTorneoTable extends SupabaseTable<EstadosTorneoRow> {
  @override
  String get tableName => 'EstadosTorneo';

  @override
  EstadosTorneoRow createRow(Map<String, dynamic> data) =>
      EstadosTorneoRow(data);
}

class EstadosTorneoRow extends SupabaseDataRow {
  EstadosTorneoRow(super.data);

  @override
  SupabaseTable get table => EstadosTorneoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);
}
