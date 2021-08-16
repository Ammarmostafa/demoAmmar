
import 'dart:io';
void main(){
  var a;
  var b;
  var c;
  print("Enter three numbers");
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  c = double.parse(stdin.readLineSync()!);
  double max = a;
  if (b>max){
    max = b;
  if (c > max ){
    max=c;
  }
  print ("The Max number is $max");
  }
}