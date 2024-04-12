import '../database.dart';

class TorneosTable extends SupabaseTable<TorneosRow> {
  @override
  String get tableName => 'Torneos';

  @override
  TorneosRow createRow(Map<String, dynamic> data) => TorneosRow(data);
}

class TorneosRow extends SupabaseDataRow {
  TorneosRow(super.data);

  @override
  SupabaseTable get table => TorneosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  DateTime? get fechaInicio => getField<DateTime>('FechaInicio');
  set fechaInicio(DateTime? value) => setField<DateTime>('FechaInicio', value);

  String? get categorias => getField<String>('Categorias');
  set categorias(String? value) => setField<String>('Categorias', value);

  String? get descripcion => getField<String>('Descripcion');
  set descripcion(String? value) => setField<String>('Descripcion', value);

  String? get flyerPath => getField<String>('Flyer_Path');
  set flyerPath(String? value) => setField<String>('Flyer_Path', value);

  int? get estado => getField<int>('Estado');
  set estado(int? value) => setField<int>('Estado', value);

  DateTime? get fechaAperturaInscripcion =>
      getField<DateTime>('fechaAperturaInscripcion');
  set fechaAperturaInscripcion(DateTime? value) =>
      setField<DateTime>('fechaAperturaInscripcion', value);

  int? get precio => getField<int>('Precio');
  set precio(int? value) => setField<int>('Precio', value);

  int get idClub => getField<int>('idClub')!;
  set idClub(int value) => setField<int>('idClub', value);
}
