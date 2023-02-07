List<String> printCharName(String name) {
  var listChar = <String>[];
  for (var i = 0; i < name.length; i++) {
    listChar.add(name[i]);
    print(name[i]);
  }
  return listChar;
}
