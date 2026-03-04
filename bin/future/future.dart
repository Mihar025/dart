


void main() async{


  final result = await giveResultAfter2Sec();
  print(result);

  final resultTwo = await giveResultAfter3Sec();
  print(resultTwo);


}

  Future<String> giveResultAfter2Sec() async {
    return Future( () {
      return 'HELLO NIGGER!';
    });
  }

  Future<String> giveResultAfter3Sec() async {
  return Future.delayed(Duration(seconds: 3), () async {
    return 'HELLO!';
  });
  }
