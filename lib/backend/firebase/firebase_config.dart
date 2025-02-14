import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3ZhnvKeQ30nq3dNrJkaufwPBmmJHKT10",
            authDomain: "pp-analytics-3c17a.firebaseapp.com",
            projectId: "pp-analytics-3c17a",
            storageBucket: "pp-analytics-3c17a.firebasestorage.app",
            messagingSenderId: "374295366836",
            appId: "1:374295366836:web:10651aec1f7db83a281be1",
            measurementId: "G-QR72Y9VDL3"));
  } else {
    await Firebase.initializeApp();
  }
}
