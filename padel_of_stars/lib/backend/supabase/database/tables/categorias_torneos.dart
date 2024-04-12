import '../database.dart';

class CategoriasTorneosTable extends SupabaseTable<CategoriasTorneosRow> {
  @override
  String get tableName => 'CategoriasTorneos';

  @override
  CategoriasTorneosRow createRow(Map<String, dynamic> data) =>
      CategoriasTorneosRow(data);
}

class CategoriasTorneosRow extends SupabaseDataRow {
  CategoriasTorneosRow(super.data);

  @override
  SupabaseTable get table => CategoriasTorneosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idCategoria => getField<int>('idCategoria')!;
  set idCategoria(int value) => setField<int>('idCategoria', value);

  int get idTorneo => getField<int>('idTorneo')!;
  set idTorneo(int value) => setField<int>('idTorneo', value);

  String? get nombre => getField<String>('Nombre');
  set nombre(String? value) => setField<String>('Nombre', value);

  String? get cuadroUrl => getField<String>('cuadro_url');
  set cuadroUrl(String? value) => setField<String>('cuadro_url', value);
}
