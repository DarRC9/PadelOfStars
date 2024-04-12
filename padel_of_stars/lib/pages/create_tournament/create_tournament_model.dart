import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_tournament_widget.dart' show CreateTournamentWidget;
import 'package:flutter/material.dart';

class CreateTournamentModel extends FlutterFlowModel<CreateTournamentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionController;
  String? Function(BuildContext, String?)? descripcionControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Precio widget.
  FocusNode? precioFocusNode;
  TextEditingController? precioController;
  String? Function(BuildContext, String?)? precioControllerValidator;
  // State field(s) for Club widget.
  String? clubValue;
  FormFieldController<String>? clubValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionController?.dispose();

    precioFocusNode?.dispose();
    precioController?.dispose();
  }
}
