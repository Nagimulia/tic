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
    apiKey: 'AIzaSyA6NSzrpnuyAwBMrFkmNF0C0Uz7FM6wt_M',
    appId: '1:8275020186:web:33632bbbdf27c145b21223',
    messagingSenderId: '8275020186',
    projectId: 'ticwallpapers',
    authDomain: 'ticwallpapers.firebaseapp.com',
    storageBucket: 'ticwallpapers.appspot.com',
    measurementId: 'G-P5N03S6KGB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKWWKa0h9eFyxdGbpplBE4WjRVC8cQ4yA',
    appId: '1:8275020186:android:3ae91952c5e852ccb21223',
    messagingSenderId: '8275020186',
    projectId: 'ticwallpapers',
    storageBucket: 'ticwallpapers.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGpuhtdn1_iyLwzt74OaKb16urZiygP90',
    appId: '1:8275020186:ios:a4c6ca7400b13b94b21223',
    messagingSenderId: '8275020186',
    projectId: 'ticwallpapers',
    storageBucket: 'ticwallpapers.appspot.com',
    iosBundleId: 'com.example.tic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGpuhtdn1_iyLwzt74OaKb16urZiygP90',
    appId: '1:8275020186:ios:8b03893b4808e6ffb21223',
    messagingSenderId: '8275020186',
    projectId: 'ticwallpapers',
    storageBucket: 'ticwallpapers.appspot.com',
    iosBundleId: 'com.example.tic.RunnerTests',
  );
}