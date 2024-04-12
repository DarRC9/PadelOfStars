import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

LatLng createLatLng(
  String lat,
  String long,
) {
  // turn string  lat and string long into lanlng datatype
  final double latitude = double.parse(lat);
  final double longitude = double.parse(long);
  return LatLng(latitude, longitude);
}

int parseToInt(String value) {
  int tries;

  try {
    tries = int.parse(value);
  } catch (err) {
    return 0;
  }

  return tries;
}

String? createUserLink(int idUser) {
  return 'padelofstars://padelofstars.com/friendprofile/' + idUser.toString();
}

String createTrounLink(String idTournament) {
  return 'padelofstars://padelofstars.com/TournamentInfo/$idTournament';
}
