import 'package:freezed_annotation/freezed_annotation.dart';

part 'steno.freezed.dart';

part 'steno.g.dart';

@Freezed()
class Steno with _$Steno {
  const factory Steno({
    required String id,
    required String text,
    required String strokeImage,
    required String typingKeys,
  }) = _Steno;

  factory Steno.fromJson(Map<String, dynamic> json) => _$StenoFromJson(json);
}
