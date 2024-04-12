import '../database.dart';

class JugadoresTable extends SupabaseTable<JugadoresRow> {
  @override
  String get tableName => 'Jugadores';

  @override
  JugadoresRow createRow(Map<String, dynamic> data) => JugadoresRow(data);
}

class JugadoresRow extends SupabaseDataRow {
  JugadoresRow(super.data);

  @override
  SupabaseTable get table => JugadoresTable();

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  int get idJugador => getField<int>('IdJugador')!;
  set idJugador(int value) => setField<int>('IdJugador', value);

  bool get sexo => getField<bool>('Sexo')!;
  set sexo(bool value) => setField<bool>('Sexo', value);

  bool get isAdmin => getField<bool>('isAdmin')!;
  set isAdmin(bool value) => setField<bool>('isAdmin', value);

  String? get idUsuario => getField<String>('idUsuario');
  set idUsuario(String? value) => setField<String>('idUsuario', value);
}
