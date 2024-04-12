import '../database.dart';

class CategoriasTable extends SupabaseTable<CategoriasRow> {
  @override
  String get tableName => 'Categorias';

  @override
  CategoriasRow createRow(Map<String, dynamic> data) => CategoriasRow(data);
}

class CategoriasRow extends SupabaseDataRow {
  CategoriasRow(super.data);

  @override
  SupabaseTable get table => CategoriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  int get nivel => getField<int>('Nivel')!;
  set nivel(int value) => setField<int>('Nivel', value);

  bool? get sexo => getField<bool>('Sexo');
  set sexo(bool? value) => setField<bool>('Sexo', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);
}
