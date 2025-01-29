import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAEiXMkrJnTjXKRlLnhscyfPsXqPsn1dIE",
            authDomain: "yehaa-vscqk5.firebaseapp.com",
            projectId: "yehaa-vscqk5",
            storageBucket: "yehaa-vscqk5.appspot.com",
            messagingSenderId: "657679504996",
            appId: "1:657679504996:web:d2274d51a9dba65a453171"));
  } else {
    await Firebase.initializeApp();
  }
}
