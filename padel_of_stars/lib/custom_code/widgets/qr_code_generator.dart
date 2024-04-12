// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_bar_code/code/code.dart';
import 'package:qr_bar_code/qr/qr.dart';

class QrCodeGenerator extends StatefulWidget {
  const QrCodeGenerator({
    super.key,
    this.width,
    this.height,
    required this.data,
    required this.eyeStyleColor,
    required this.moduleStyleColor,
    required this.qrBackgroundColor,
  });

  final double? width;
  final double? height;
  final String data;
  final Color eyeStyleColor;
  final Color moduleStyleColor;
  final Color qrBackgroundColor;

  @override
  State<QrCodeGenerator> createState() => _QrCodeGeneratorState();
}

class _QrCodeGeneratorState extends State<QrCodeGenerator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QRCode(
          data: widget.data,
          eyeStyle: QREyeStyle(color: widget.eyeStyleColor),
          dataModuleStyle: QRDataModuleStyle(color: widget.moduleStyleColor),
          backgroundColor: widget.qrBackgroundColor,
        ),
      ],
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
