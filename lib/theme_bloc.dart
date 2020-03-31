
import 'dart:async';

class ThemeBloc{

final _themeStreamController=StreamController<bool>();

get changeTheme=>_themeStreamController.sink.add;

get darkThemeEnable=>_themeStreamController.stream;

dispose(){
  
  _themeStreamController.close();
}
}