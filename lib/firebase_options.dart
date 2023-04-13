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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDOj_gCI-A05m3SaKFvU6q4i-YHBduAyUY',
    appId: '1:660494757646:web:0666829345109eb7dc715f',
    messagingSenderId: '660494757646',
    projectId: 'speaknow-8babc',
    authDomain: 'speaknow-8babc.firebaseapp.com',
    databaseURL: 'https://speaknow-8babc-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'speaknow-8babc.appspot.com',
    measurementId: 'G-79BNJ6ND86',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6eQkJNOYmPWXpqHr-ZWetVhGwK5LdFj0',
    appId: '1:660494757646:ios:8b2cb5db5e1dacd7dc715f',
    messagingSenderId: '660494757646',
    projectId: 'speaknow-8babc',
    databaseURL: 'https://speaknow-8babc-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'speaknow-8babc.appspot.com',
    androidClientId: '660494757646-vf382irtb6ovrplug7270e7u15l313c8.apps.googleusercontent.com',
    iosClientId: '660494757646-q0ef9r75pvd8u4qc22dg6u1vd4p1gfi3.apps.googleusercontent.com',
    iosBundleId: 'com.example.snEditLessons',
  );
}
