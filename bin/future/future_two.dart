


void main(){

  giveResultAfterTwoSec().then((val){
    print(val);
  });

}

Future<String> giveResultAfterTwoSec(){
  return Future.delayed(Duration(seconds: 2), () async {
    return 'Hello!!!';
  });
}