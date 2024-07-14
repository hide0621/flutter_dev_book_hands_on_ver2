import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Request {
  const Request({
    required this.appId,
    required this.sentence,
    this.outputType = 'hiragane',
  });

  final String appId;
  final String sentence;
  final String outputType;

  Map<String, Object?> toJson() => _$RequestToJson(this);
}
