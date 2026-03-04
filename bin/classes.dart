


void main(){
/*
    //Creating instance of class
    Cookie cookie =  Cookie('CookieName', 'Rounded');
    //Working with this instance
    print(cookie.cookieName);
    print(cookie.cookieType);
    cookie.showCookie();
    cookie.startBaking();
 */

  Cookie cookie = Cookie( 'Oreo', 'Chocolate');
  print(cookie.getCookieName);
  print(cookie.getCookieType);

  cookie.setCookieName = 'HA';
  cookie.setCookieType = 'Loosed';

  print(cookie.getCookieName);
  print(cookie.getCookieType);




}



class Cookie {

  String _cookieName;
  String _cookieType;


  Cookie(this._cookieName, this._cookieType);

  String get getCookieName => _cookieName;
  String get getCookieType => _cookieType;

  set setCookieName(String cookieName){
    if(cookieName.isNotEmpty){
      _cookieName = cookieName;
    }
  }

  set setCookieType (String cookieType){
    if (cookieType.isNotEmpty){
      _cookieType = cookieType;
    }
  }

  void showCookie(){
      print('Cookie');
    }

    void startBaking(){
      print('We started baking cookie');
    }


}