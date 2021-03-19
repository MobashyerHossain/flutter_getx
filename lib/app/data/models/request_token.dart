class RequestToken {
  final bool success;
  final String expiresAt;
  final String requestToken;

  RequestToken({
    required this.success,
    required this.expiresAt,
    required this.requestToken,
  });

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        expiresAt: json["expires_at"],
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt,
        "request_token": requestToken,
      };
}
