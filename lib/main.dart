
import 'dart:developer';

import 'package:api_handling/data/Models/usermodel.dart';
import 'package:api_handling/data/repositories/post_repository.dart';
import 'package:api_handling/presentation/Screens/Home_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  PostRepository postRepository = PostRepository();
 List<UserModel> usermodels = await postRepository.fetchPost();
 log(usermodels.toString());
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
