import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://qwsnqihtrodkmvdhpgbf.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF3c25xaWh0cm9ka212ZGhwZ2JmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk5ODYyMzQsImV4cCI6MjAyNTU2MjIzNH0.Asoan-b2WTvUrY8BP8Wk9TCNC0y1hByD4wIgc0JVxuM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
