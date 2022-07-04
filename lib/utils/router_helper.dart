// import 'package:flutter/cupertino.dart';
// import 'package:travel2mar/presentation/home/home_screen.dart';

// class Routes {
//   Routes._();

//   static const String home = '/home';

//   static final routes = {
//     home: (_) => const HomeScreen(),
//   };

//   static pushNamed(String route) {
//     Navigator.pushNamed(navigatorKey.currentState!.context, route);
//   }

//   static dynamic goBack({dynamic result}) {
//     return Navigator.maybePop(navigatorKey.currentState!.context, result);
//   }

//   static goToHome() {
//     if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
//         home) {
//       Navigator.pushNamed(navigatorKey.currentState!.context, home);
//     }
//   }

//   static void removeAllAndGoToNamed(BuildContext context, String route) {
//     if (ModalRoute.of(context)?.settings.name != route) {
//       Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
//     }
//   }
// }
