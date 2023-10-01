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
    apiKey: 'AIzaSyCwmO8FRwXpMSTE-Vfqh93odLbeAYNnlVk',
    appId: '1:707435294082:web:6e0b991cd400976fe3339b',
    messagingSenderId: '707435294082',
    projectId: 'businessbank-test',
    authDomain: 'businessbank-test.firebaseapp.com',
    storageBucket: 'businessbank-test.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0UcRTE8TFUasd-iWHfmH4PvIwkX3pakk',
    appId: '1:707435294082:android:5002ebb71353f583e3339b',
    messagingSenderId: '707435294082',
    projectId: 'businessbank-test',
    storageBucket: 'businessbank-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQPVLaQkOudm5ZovNc29OHLqiDN0gfzro',
    appId: '1:707435294082:ios:49f0e14700e24cc1e3339b',
    messagingSenderId: '707435294082',
    projectId: 'businessbank-test',
    storageBucket: 'businessbank-test.appspot.com',
    iosBundleId: 'com.example.businessBank',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQPVLaQkOudm5ZovNc29OHLqiDN0gfzro',
    appId: '1:707435294082:ios:1523babf79f09735e3339b',
    messagingSenderId: '707435294082',
    projectId: 'businessbank-test',
    storageBucket: 'businessbank-test.appspot.com',
    iosBundleId: 'com.example.businessBank.RunnerTests',
  );
}