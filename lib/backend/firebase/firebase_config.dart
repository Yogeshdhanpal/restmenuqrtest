import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyATDazSdORYK-IKq7uawfUopwXwGniRA5c",
            authDomain: "restaurantpos-1659f.firebaseapp.com",
            projectId: "restaurantpos-1659f",
            storageBucket: "restaurantpos-1659f.appspot.com",
            messagingSenderId: "599753411100",
            appId: "1:599753411100:web:6f7479b7410e2b54f2edd9"));
  } else {
    await Firebase.initializeApp();
  }
}
