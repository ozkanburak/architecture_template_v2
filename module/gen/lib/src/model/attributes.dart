import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@immutable
@JsonSerializable()

// the module use in x api response
final class Attributes with EquatableMixin {
  /// It will be used

  const Attributes({
    this.title,
    this.body,
    this.created,
    this.updated,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);


  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [title, body, created, updated];

  /// The `copyWith` method in the `Attributes` class is a common pattern used in Dart to create a new
  /// instance of an object with updated values. It allows you to create a new `Attributes` object by
  /// specifying new values for specific properties, while keeping the other properties unchanged.
  Attributes copyWith({
    String? title,
    String? body,
    DateTime? created,
    DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
