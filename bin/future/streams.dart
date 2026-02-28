



void main(){


  countDown().listen((val) {
    print(val);
  }, onDone: (){
    print('I cp,[;eted');
  });

}

  Stream<int> countDown () async*{
    for(int i = 0; i < 10; i ++){
     yield i;
     await Future.delayed(Duration(seconds: 1)).catchError((err) {
       print(err);
     });
    }

  }