import 'package:flutter/material.dart';

import 'home_page.dart';
import 'theme_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
     initialData: false,
     stream: bloc.darkThemeEnable,
     builder: (context,snapShot){
       return MaterialApp(
       theme: snapShot.data?ThemeData.dark():ThemeData.light(),
       home:  HomePage(snapShot.data,bloc),
       );
     },
    );
  }
}
final bloc = ThemeBloc();