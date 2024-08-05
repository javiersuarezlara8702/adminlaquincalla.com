// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

// Set your action name, define your arguments and return parameter,

Future onesignalInitialise() async {
  final String oneSignalAppId =
      isAndroid ? "bcf3d1db-7e0b-47cb-b9b5-06eda3f621ae" : "your iOS key";

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize(oneSignalAppId);
  OneSignal.Notifications.requestPermission(true);
}
// and then add the boilerplate code using the green button on the right!
