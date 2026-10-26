/// Response models for the Base64 Encoder/Decoder API.

/// API Response wrapper.
class Base64Response {
  final String status;
  final dynamic error;
  final Base64Data? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  Base64Response({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory Base64Response.fromJson(Map<String, dynamic> json) => Base64Response(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? Base64Data.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Base64 Encoder/Decoder API.

class Base64Data {
  String? action;
  String? original;
  String? encoded;
  num? length;

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
