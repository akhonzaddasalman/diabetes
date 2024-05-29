// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAobKc5cDQGupNML-YeZ_-0Lysky5Khg-I',
    appId: '1:370423946388:web:501af7868d053bbae32881',
    messagingSenderId: '370423946388',
    projectId: 'mindingherdia',
    authDomain: 'mindingherdia.firebaseapp.com',
    storageBucket: 'mindingherdia.appspot.com',
    measurementId: 'G-G3PFMH523F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClgEHyrWapZ_wHg_vLJJRy5GXSIhBFrP4',
    appId: '1:370423946388:android:09d0775839a1db88e32881',
    messagingSenderId: '370423946388',
    projectId: 'mindingherdia',
    storageBucket: 'mindingherdia.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-FB312DBpNju2ZkeCa9uCDKVyi2v0Eco',
    appId: '1:370423946388:ios:03f49342ffd5c436e32881',
    messagingSenderId: '370423946388',
    projectId: 'mindingherdia',
    storageBucket: 'mindingherdia.appspot.com',
    iosBundleId: 'com.mindingherdia.mindingherdia',
  );
}
