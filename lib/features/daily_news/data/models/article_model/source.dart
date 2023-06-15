import 'dart:convert';

class Source {
  dynamic id;
  String? name;

  Source({this.id, this.name});

  @override
  String toString() => 'Source(id: $id, name: $name)';

  factory Source.fromMap(Map<String, dynamic> data) => Source(
        id: data['Id'] as dynamic,
        name: data['Name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Source].
  factory Source.fromJson(String data) {
    return Source.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Source] to a JSON string.
  String toJson() => json.encode(toMap());
}
