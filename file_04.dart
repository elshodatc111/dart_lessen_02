import 'dart:async';
void main() {
  int a=1;
  int b=2;
  
  Amallar([
    CreateYigindi(a,b),
    CreateAyirma(a,b)
  ]).listen((events){
    print(events);
  });

}

Stream<int> Amallar(List<Future<int>> asuncFun) async*{
  for(var fun in asuncFun){
    yield await fun;
  }
}

Future<int> CreateYigindi(int a, int b) async{
  return await Future.delayed(Duration(seconds: 1)).then((value){
    int c = a+b;
    print("Yigindi");
    return c;
  });
}

Future<int> CreateAyirma(int a, int b) async{
  return await Future.delayed(Duration(seconds: 3)).then((value){
    int c = a-b;
    print("Ayirma");
    return c;
  });
}