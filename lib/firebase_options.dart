// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBkx5Ur67Yd2EFbFu2rkJyUdc30j8wzjZI',
    appId: '1:711674450653:web:abd9885cdc0fbcf9e44134',
    messagingSenderId: '711674450653',
    projectId: 'compi-fb2ba',
    authDomain: 'compi-fb2ba.firebaseapp.com',
    storageBucket: 'compi-fb2ba.appspot.com',
    measurementId: 'G-PSTG5GJBCR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARa4CrPQrs30w25KXzOmyDWCjm2ohCRNk',
    appId: '1:711674450653:android:172125496b19c688e44134',
    messagingSenderId: '711674450653',
    projectId: 'compi-fb2ba',
    storageBucket: 'compi-fb2ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9wcFApyzHolYv0ofT-kl_bxggMjLPT9I',
    appId: '1:711674450653:ios:5945e216f66180f1e44134',
    messagingSenderId: '711674450653',
    projectId: 'compi-fb2ba',
    storageBucket: 'compi-fb2ba.appspot.com',
    iosClientId: '711674450653-j9n6mb4nobp7i14v58b2td9ufpcb8ihj.apps.googleusercontent.com',
    iosBundleId: 'com.example.compi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9wcFApyzHolYv0ofT-kl_bxggMjLPT9I',
    appId: '1:711674450653:ios:5945e216f66180f1e44134',
    messagingSenderId: '711674450653',
    projectId: 'compi-fb2ba',
    storageBucket: 'compi-fb2ba.appspot.com',
    iosClientId: '711674450653-j9n6mb4nobp7i14v58b2td9ufpcb8ihj.apps.googleusercontent.com',
    iosBundleId: 'com.example.compi',
  );
}
