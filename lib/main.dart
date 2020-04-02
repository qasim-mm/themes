import 'package:custom_themes/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final darkTheme = ThemeData(
  buttonColor: Colors.green,
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  buttonTheme: ButtonThemeData(
  textTheme: ButtonTextTheme.accent
    
  ),
 // backgroundColor: const Color(0xFF212121),
);

final lightTheme = ThemeData(
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.redAccent,
    
    
  ),
  buttonColor: Colors.blue,
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);

void main() => runApp(

      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(darkTheme),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Button Themes',
      theme: themeNotifier.getTheme(),
      home: MyHomePage(title: "Theme",),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Light Theme"),
              onPressed: (){
              Provider.of<ThemeNotifier>(context,listen: false).setTheme(lightTheme);
            },),
            SizedBox(height: 100),

            Theme(
              data: ThemeData(buttonColor: Colors.yellow),
              child:RaisedButton(
              child: Text("Dark Theme"),
              onPressed: (){
              Provider.of<ThemeNotifier>(context,listen: false).setTheme(darkTheme);
            },) ,)
          ],
        ),
      )
      ,
      );
  }
}

// class Button extends StatelessWidget {
//   final ButtonThemeData buttonThemeData;
//   final String text;
//   final Function onPressed;
//   const Button({Key key,@required this.buttonThemeData,@required this.text,@required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData(
//         buttonTheme: buttonThemeData
//       ),
//       child: MaterialButton(child: Text(text),
//       onPressed: onPressed,),
//     );
//   }
// }