import 'dart:io';

void main(){
  var result = readData('text.txt');
  String text = result.toLowerCase();
  Map<String, int> letterCounts = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (RegExp(r'[a-z]').hasMatch(char)) {
      if (letterCounts.containsKey(char)) {
        letterCounts[char] = letterCounts[char]! + 1;
      } else {
        letterCounts[char] = 1;
      }
    }
  }
  print(letterCounts);
}

String readData(String path){
  File file = File(path);
  try{
    var text = file.readAsStringSync();
    file.writeAsString(text);
    return text;
  } on PathNotFoundException{
    file.writeAsString("");
    return "Create txt file";
  }
  catch(e){
    return e.toString();
  }
}