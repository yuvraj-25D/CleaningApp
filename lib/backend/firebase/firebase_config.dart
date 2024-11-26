import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAKnc2eSQfQeFxbzoI1GV4u7b5U05PoA1Y",
            authDomain: "cleaning-app-9p7q7k.firebaseapp.com",
            projectId: "cleaning-app-9p7q7k",
            storageBucket: "cleaning-app-9p7q7k.appspot.com",
            messagingSenderId: "715686886449",
            appId: "1:715686886449:web:54ba6313d086e3409aa910"));
  } else {
    await Firebase.initializeApp();
  }
}
