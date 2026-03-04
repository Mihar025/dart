



void main(){

    String zone = 'XYZ';
    int weight = 342;


    switch (zone){
      case 'XYZ' :
        print('Price is: ${weight * 5}');
      case 'ABC' :
        print('Price is: ${weight * 7}');
      case 'PQR' :
        print('Price is: ${weight * 10}');
      default:
        print('An error occurred please try again!');
    }

    // Loops

    for(int i = 1; i <= 10; i ++){
     // print('Hello ${i}');
    }

    String name = 'Misha';

    for(int i = 0; i < name.length; i ++){
      print(name[i]);
    }



}