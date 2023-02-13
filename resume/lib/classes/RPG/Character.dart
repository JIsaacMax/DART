// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Character implements Comparable<Character> {
  abstract String name;
  abstract String type;
  abstract final DateTime creatDate;
  abstract int level;

  @override
  bool operator ==(covariant Character other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.type == type &&
        other.creatDate == creatDate &&
        other.level == level;
  }

  @override
  int get hashCode {
    return name.hashCode ^ type.hashCode ^ creatDate.hashCode ^ level.hashCode;
  }

  //Comparação universal a tudo que herda Character, sobrescrevendo compareTo
  @override
  int compareTo(Character other) {
    return level.compareTo(other.level);
  }
}
