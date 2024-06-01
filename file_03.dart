import 'dart:io';
void main() async {
  
  String filename = 'text03.txt';

  String seatch = "matn";
  String text = "matn";
  //String text = "search";
  
  await writeFile(filename, text);

  String test2 = await readFile(filename);
  seatch == test2? print(true):print(false);
  
}

Future<void> writeFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content);
}

Future<String> readFile(String path) async {
  final file = File(path);
  return await file.readAsString();
}

