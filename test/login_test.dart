import 'package:flutter/material.dart';
import 'package:flutter_myapp/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() async {


  patrolTest("Login user successfully", (PatrolTester $) async {
    await $.pumpWidgetAndSettle(const MyApp());
    await $.native.enterText(
        Selector(textContains: 'Nombre'), text: "Juan Pablo");
    await $.native.enterText(
        Selector(textContains: 'Apellido'), text: "Gonzalez");
    await $.native.tap(Selector(textContains: 'Open second page'));
    expect($("Juan Pablo").waitUntilVisible(), findsOneWidget);
  }, nativeAutomation: true);
}