import 'package:flutter/material.dart';

void main(){

      runApp(MyApp() ); //runApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
             title: 'Button Theme',
              home:Scaffold(
                appBar: AppBar(
                  title: Text('Button Themes'),
                ),
                body:Center(
                          child:Padding(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                    RaisedGradientButton(
                             child: Text('Button 1',
                             style: TextStyle(color: Colors.white),),
                             gradient: LinearGradient(
                             colors: <Color>[Colors.redAccent, Colors.teal],
                              ),
                            onPressed: (){
                            print('button 1 clicked');
  }
),
                  RaisedGradientButton(
                            child: Text('Button 2',
                            style: TextStyle(color: Colors.white),),
                            gradient: LinearGradient(
                            colors: <Color>[Colors.green, Colors.black],
  ),
                           onPressed: (){
                           print('button 2 clicked');
  }
),
],
 ), padding: EdgeInsets.all(16.0),
                ),),
),
 );
  }
}

  
class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 100.0,
    this.height = 50.0,
    this.onPressed,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      margin: EdgeInsets.only(left:20.0),
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
