import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Floors widget.
  String? floorsValue;
  FormFieldController<String>? floorsValueController;
  // State field(s) for Basement widget.
  String? basementValue;
  FormFieldController<String>? basementValueController;
  // State field(s) for FirstFloor widget.
  String? firstFloorValue;
  FormFieldController<String>? firstFloorValueController;
  // State field(s) for secondfloor widget.
  String? secondfloorValue;
  FormFieldController<String>? secondfloorValueController;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
