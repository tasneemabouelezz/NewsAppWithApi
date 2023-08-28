import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/1st_screen.dart';
import 'package:newsapp/2nd_screen.dart';
import 'package:newsapp/3rd_screen.dart';
import 'package:newsapp/4th_screen.dart';
 import 'package:newsapp/Data/Cubits/get_news_cubit.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MultiBlocProvider
      (
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        home: firstscreen(),
      ),
    );
  }
}

