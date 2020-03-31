import 'main.dart';
import 'theme_bloc.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  
  final bool isDarkEnabled;
  final ThemeBloc themeBloc;

  HomePage(this.isDarkEnabled,this.themeBloc);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Demo'),
        centerTitle: true,
      ),
      
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context,index){
          return ListTile(
            title: Text('MM Employee ${index+1}'),
            leading: Image.network('https://robohash.org/user$index}'),
            trailing: Icon(Icons.edit),
            onLongPress: bloc.changeTheme

          );
        }
      ),
      drawer: Drawer(
       child: ListView(
         children: <Widget>[
          ListTile(
            title: Text('Dark Theme'),
            trailing: Switch(
              value: isDarkEnabled,
              onChanged: themeBloc.changeTheme,

            ),
          ),
         ],
       )
      ),

    );
  }
}