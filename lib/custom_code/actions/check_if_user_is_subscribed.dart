// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:purchases_flutter/purchases_flutter.dart';

Future<bool> checkIfUserIsSubscribed() async {
  try {
    // Fetch the customer info
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();

    print('User check info: ${customerInfo.toJson()}');

    // Check if there are any active entitlements
    if (customerInfo.entitlements.active.isNotEmpty) {
      // User has active entitlements (subscriptions)

      FFAppState().isSubscribed = true;
      FFAppState().customerInfo = CustomerInfoStruct.fromMap(
          customerInfo.entitlements.all['Pro']!.toJson());
      return true;
    } else {
      // No active subscriptions
      FFAppState().isSubscribed = false;
      FFAppState().customerInfo = CustomerInfoStruct.fromMap(
          customerInfo.entitlements.all['Pro']!.toJson());
      return false;
    }
  } catch (e) {
    // Handle error
    print("Error fetching customer info: $e");
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
