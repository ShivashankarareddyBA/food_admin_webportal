import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_admin_webportal/authentication/login_screen.dart';
import 'package:food_admin_webportal/main_screens/home_screen.dart';

Future<void> main()  async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: const FirebaseOptions(
      apiKey: "AIzaSyCxaXWUGPkff50OYHZyHLSKckuarNHCbi8", // Your apiKey
      appId: "1:64673894501:web:e51857319828e10338b68c", // Your appId
      messagingSenderId: "64673894501", // Your messagingSenderId
      projectId: "foodsellerapp-facb0", // Your projectId
    ),

  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Admin Web Portal',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? const LoginScreen() : const HomeScreen(),
    );
  }
}

