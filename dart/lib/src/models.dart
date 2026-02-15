/// Response models for the Base64 Encoder/Decoder API.

/// API Response wrapper.
class Base64Response {
  final String status;
  final dynamic error;
  final Base64Data? data;

  Base64Response({
    required this.status,
    this.error,
    this.data,
  });

  factory Base64Response.fromJson(Map<String, dynamic> json) => Base64Response(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? Base64Data.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Base64 Encoder/Decoder API.

class Base64Data {
  String? action;
  String? original;
  String? encoded;
  int? length;

  Base64Data({
    this.action,
    this.original,
    this.encoded,
    this.length,
  });

  factory Base64Data.fromJson(Map<String, dynamic> json) => Base64Data(
      action: json['action'],
      original: json['original'],
      encoded: json['encoded'],
      length: json['length'],
    );
}

class Base64Request {
  String text;
  String? action;

  Base64Request({
    required this.text,
    this.action,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (action != null) 'action': action,
    };
}
