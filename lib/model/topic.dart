import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

part 'topic.g.dart';

@Freezed()
class Topic with _$Topic {
  const factory Topic(
      {required String id,
        required String stenoId,
        required String description}) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
