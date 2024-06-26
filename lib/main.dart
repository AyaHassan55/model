

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'home.dart';


 List<CameraDescription> cameras=[];
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home:const  HomeScreen(),
    );
  }
}




