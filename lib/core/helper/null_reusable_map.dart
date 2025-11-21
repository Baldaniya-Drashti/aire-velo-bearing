Map<String, dynamic> removeNullAndEmpty(Map<String, dynamic> data) {
  final cleaned = <String, dynamic>{};

  data.forEach((key, value) {
    if (value == null) return;

    if (value is String && value.trim().isEmpty) return;

    if (value is List && value.isEmpty) return;

    cleaned[key] = value;
  });

  return cleaned;
}
