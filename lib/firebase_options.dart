import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
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
    apiKey: 'AIzaSyAV3B1Ish69cVliqfbwAOrLM4gQPXXkqio',
    appId: '1:378170497050:web:39eba0f77996a414d819a3',
    messagingSenderId: '378170497050',
    projectId: 'lyra-cbc52',
    authDomain: 'lyra-cbc52.firebaseapp.com',
    storageBucket: 'lyra-cbc52.firebasestorage.app',
    measurementId: 'G-0XSN4EF71G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJQl5qKvho8Z4F0xFsBFJkHx5sYob0Wc8',
    appId: '1:378170497050:android:59dbc1006cd811edd819a3',
    messagingSenderId: '378170497050',
    projectId: 'lyra-cbc52',
    storageBucket: 'lyra-cbc52.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYMot__VXwYCrI64mUMiv97-LUZHKUWBI',
    appId: '1:378170497050:ios:9ed824d036733b28d819a3',
    messagingSenderId: '378170497050',
    projectId: 'lyra-cbc52',
    storageBucket: 'lyra-cbc52.firebasestorage.app',
    iosBundleId: 'com.example.lyra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYMot__VXwYCrI64mUMiv97-LUZHKUWBI',
    appId: '1:378170497050:ios:9ed824d036733b28d819a3',
    messagingSenderId: '378170497050',
    projectId: 'lyra-cbc52',
    storageBucket: 'lyra-cbc52.firebasestorage.app',
    iosBundleId: 'com.example.lyra',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAV3B1Ish69cVliqfbwAOrLM4gQPXXkqio',
    appId: '1:378170497050:web:5eb8bd07b9b8cb6cd819a3',
    messagingSenderId: '378170497050',
    projectId: 'lyra-cbc52',
    authDomain: 'lyra-cbc52.firebaseapp.com',
    storageBucket: 'lyra-cbc52.firebasestorage.app',
    measurementId: 'G-TVFXTYLBB4',
  );
}
