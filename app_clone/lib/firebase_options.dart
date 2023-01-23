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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC-v3dVrzKZ8cZ87LkD8RwHPUnFrtWf_TM',
    appId: '1:925494202751:web:9e16fe0c03a9aefec74a4a',
    messagingSenderId: '925494202751',
    projectId: 'app-clone-backend-e9f18',
    authDomain: 'app-clone-backend-e9f18.firebaseapp.com',
    storageBucket: 'app-clone-backend-e9f18.appspot.com',
    measurementId: 'G-TERNMSR47S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArP4NEvyfHGf7OrGs4SEuJfBQv2a-RbcE',
    appId: '1:925494202751:android:e5ddaef520cf625dc74a4a',
    messagingSenderId: '925494202751',
    projectId: 'app-clone-backend-e9f18',
    storageBucket: 'app-clone-backend-e9f18.appspot.com',
  );
}
