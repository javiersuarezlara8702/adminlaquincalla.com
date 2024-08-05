// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sqflite/sqlite_api.dart';

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future onesignal() async {
  // Add your function code here!

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("bcf3d1db-7e0b-47cb-b9b5-06eda3f621ae");

  OneSignal.Notifications.requestPermission(true);
}
