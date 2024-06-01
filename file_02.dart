import 'dart:io';
import 'dart:math';

void main() async {
  
  String filename = 'text02.txt';

  Random random = Random();
  int randomInt = random.nextInt(100);
  await writeFile(filename, randomInt.toString());
  print('File Create And Write.');

  String fileContent = await readFile(filename);
  print('Select Text: $fileContent');

  await deleteFile(filename);
  print('File deleted.');
}

Future<void> writeFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content);
}

Future<String> readFile(String path) async {
  final file = File(path);
  return await file.readAsString();
}

Future<void> deleteFile(String path) async {
  final file = File(path);
  if (await file.exists()) {
    await file.delete();
  } else {
    print('File deleted.');
  }
}
