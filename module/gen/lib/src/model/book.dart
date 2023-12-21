import 'package:flutter/foundation.dart';
import 'package:gen/src/model/attributes.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'book.g.dart';

@JsonSerializable()
@immutable
final class Book with EquatableMixin {

  const Book({
    this.type,
    this.id,
    this.attributes,
  });
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  final String? type;
  final String? id;
  final Attributes? attributes;


  Map<String, dynamic> toJson() => _$BookToJson(this);
  

  @override
  List<Object?> get props => [type, id, attributes];

  Book copyWith({
    final String? type,
    final String? id,
    final Attributes? attributes,
  }) {
    return Book(
      type: type ?? this.type,
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }
}


