import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String? createuserid(String? str) {
  // create function that create a 8 character userid by using the string
  if (str == null || str.isEmpty) {
    return null;
  }
  final random = math.Random();
  final codeUnits = str.codeUnits;
  final userId = String.fromCharCodes(
      List.generate(8, (_) => codeUnits[random.nextInt(codeUnits.length)]));
  return userId;
}

int? uniqueid() {
  final random = math.Random();
  final id = List.generate(8, (_) => random.nextInt(10));
  return int.parse(id.join(''));
}

int? categoryDocumentID() {
  // i need to create a function to generate a random 12 digit code
  final random = math.Random();
  final id = List.generate(12, (_) => random.nextInt(10));
  return int.parse(id.join(''));
}

double? subtotalFunction(
  double price,
  int qty,
) {
  return price * qty;
}
