class RequestToken {
  RequestToken({
    required this.success,
    required this.guestSessionId,
    required this.expiresAt,
  });

  final bool success;
  final String guestSessionId;
  final String expiresAt;

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        guestSessionId: json["guest_session_id"],
        expiresAt: json["expires_at"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "guest_session_id": guestSessionId,
        "expires_at": expiresAt,
      };
}
