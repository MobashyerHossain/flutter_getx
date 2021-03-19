class RequestBody {
  RequestBody({
    required this.username,
    required this.password,
    required this.requestToken,
  });

  final String username;
  final String password;
  final String requestToken;

  factory RequestBody.fromJson(Map<String, dynamic> json) => RequestBody(
        username: json["username"],
        password: json["password"],
        requestToken: json["request_token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "request_token": requestToken,
      };
}
