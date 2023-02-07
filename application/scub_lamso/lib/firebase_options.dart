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
    apiKey: 'AIzaSyDYBGWy1n4aGKfH67jPFy4KZuNgrYNfkTQ',
    appId: '1:290890325728:web:4d95e1e1669a367f78ba85',
    messagingSenderId: '290890325728',
    projectId: 'scub-lamso',
    authDomain: 'scub-lamso.firebaseapp.com',
    storageBucket: 'scub-lamso.appspot.com',
    measurementId: 'G-H5GYWREQ6B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwGkjIpIb-2MXonJLutnHsibo1p17Var0',
    appId: '1:290890325728:android:1165745b76842f3578ba85',
    messagingSenderId: '290890325728',
    projectId: 'scub-lamso',
    storageBucket: 'scub-lamso.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8UlMtFZSzXwcXJCRAPNIo3QC7-AUFaMk',
    appId: '1:290890325728:ios:f364b163e2cbc7eb78ba85',
    messagingSenderId: '290890325728',
    projectId: 'scub-lamso',
    storageBucket: 'scub-lamso.appspot.com',
    iosClientId: '290890325728-s5q7rmju3as9958egp9946d96nu9g59o.apps.googleusercontent.com',
    iosBundleId: 'net.scub.scubLamso',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8UlMtFZSzXwcXJCRAPNIo3QC7-AUFaMk',
    appId: '1:290890325728:ios:f364b163e2cbc7eb78ba85',
    messagingSenderId: '290890325728',
    projectId: 'scub-lamso',
    storageBucket: 'scub-lamso.appspot.com',
    iosClientId: '290890325728-s5q7rmju3as9958egp9946d96nu9g59o.apps.googleusercontent.com',
    iosBundleId: 'net.scub.scubLamso',
  );
}