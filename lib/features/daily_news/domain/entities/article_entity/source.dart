import 'package:equatable/equatable.dart';

class Source extends Equatable {
  final dynamic id;
  final String? name;

  const Source({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
