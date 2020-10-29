import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shikha_makeover_customer_app/components/auth.dart';
import 'package:shikha_makeover_customer_app/screens/LandingPage.dart';
import 'package:shikha_makeover_customer_app/screens/Onboarding.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<Auth>(context, listen: false);
    return StreamBuilder<User>(
      stream: authService.onAuthStateChange(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print('connection active');
          final user = snapshot.data;
          return user != null ? LandingPage() : Onboarding();
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

// enum AuthStat { notSignedIn, signedIn }
//
// class RootPage extends StatefulWidget {
//
//   @override
//   _RootPageState createState() => _RootPageState();
// }
//
// class _RootPageState extends State<RootPage> {
//   AuthStat _authStat = AuthStat.notSignedIn;
//
//   @override
//   void initState() {
//     super.initState();
//     String userId = widget.auth.currentUser();
//     print(userId);
//     setState(() {
//       // _authStat = userId == null ? AuthStat.notSignedIn : AuthStat.signedIn;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     switch (_authStat) {
//       case AuthStat.notSignedIn:
//         return Onboarding(
//           auth: widget.auth,
//         );
//       case AuthStat.signedIn:
//         return LandingPage();
//     }
//   }
// }
