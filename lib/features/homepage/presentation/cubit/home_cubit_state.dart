import 'dart:convert';

class HomeState {
  int count;

  HomeState(this.count);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory HomeState.fromMap(Map<String, dynamic> map) {
    return HomeState(
      map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeState.fromJson(String source) =>
      HomeState.fromMap(json.decode(source) as Map<String, dynamic>);
}
