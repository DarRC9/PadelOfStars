import '../database.dart';

class ParejasTable extends SupabaseTable<ParejasRow> {
  @override
  String get tableName => 'Parejas';

  @override
  ParejasRow createRow(Map<String, dynamic> data) => ParejasRow(data);
}

class ParejasRow extends SupabaseDataRow {
  ParejasRow(super.data);

  @override
  SupabaseTable get table => ParejasTable();

  int get idPareja => getField<int>('idPareja')!;
  set idPareja(int value) => setField<int>('idPareja', value);

  int? get jugador1Id => getField<int>('jugador1_id');
  set jugador1Id(int? value) => setField<int>('jugador1_id', value);

  int? get jugador2Id => getField<int>('jugador2_id');
  set jugador2Id(int? value) => setField<int>('jugador2_id', value);

  DateTime get insertedAt => getField<DateTime>('inserted_at')!;
  set insertedAt(DateTime value) => setField<DateTime>('inserted_at', value);

  String? get teamName => getField<String>('teamName');
  set teamName(String? value) => setField<String>('teamName', value);
}
