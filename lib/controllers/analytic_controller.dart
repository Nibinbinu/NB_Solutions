// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:nb_solutions/firebase_options.dart';
//
// class AnalyticsEngine {
//   static final _instance = FirebaseAnalytics.instance;
//
//   static Future<void> init(){
//     return  Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//   }
//
//   static void userLogsIn(String loginMethod) async {
//     _instance.logLogin(loginMethod: loginMethod);
//   }
//
//   static void addsItemToCart(String itemId, int cost) async {
//     return _instance
//         .logAddToCart(items: [AnalyticsEventItem(itemId: itemId, price: cost)]);
//   }
// }
