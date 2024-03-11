import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:tealeaves/app/app.logger.dart';
import 'package:tealeaves/firebase_options.dart';

class FirebaseService
{
  final logger = getLogger('FirebaseService');

  late FirebaseAnalytics _firebaseAnalytics;

  FirebaseAnalytics get analytics => _firebaseAnalytics;

  Future<void> onAppStartup() async {
    logger.v('Initializing Firebase');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    _firebaseAnalytics = FirebaseAnalytics.instance;

    // disable analytics collection on debug mode
    if (! kReleaseMode) {
      logger.i('Analytics collection disabled in debug mode');
      await _firebaseAnalytics.setAnalyticsCollectionEnabled(false);
    }
    
    logger.v('Firebase app initialized');
  }
}
