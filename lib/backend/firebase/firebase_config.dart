import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBlxQtzD2GOHcl3v5XeIh4MG_3CxEAQutk",
            authDomain: "movia-2dfed.firebaseapp.com",
            projectId: "movia-2dfed",
            storageBucket: "movia-2dfed.appspot.com",
            messagingSenderId: "799917472062",
            appId: "1:799917472062:web:08cf2df92b2f5ea086146f",
            measurementId: "G-TYBP4EZDQK"));
  } else {
    await Firebase.initializeApp();
  }
}
