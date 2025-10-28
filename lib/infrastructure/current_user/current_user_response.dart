// ignore_for_file: invalid_annotation_target

class CurrentUserResponse {
  final int? userId;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? countryCode;
  final int? phone;
  final bool? isEmailVerified;
  final bool? isMobileVerified;
  final int? role;
  final String? profile;
  final String? rememberToken;
  final AuthDto? authDto;

  CurrentUserResponse({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.countryCode,
    this.phone,
    this.isEmailVerified,
    this.isMobileVerified,
    this.role,
    this.profile,
    this.rememberToken,
    this.authDto,
  });

  factory CurrentUserResponse.fromJson(Map<String, dynamic> json) {
    return CurrentUserResponse(
      userId: json['user_id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      countryCode: json['country_code'] as String?,
      phone: json['phone'] as int?,
      isEmailVerified: json['is_email_verified'] as bool?,
      isMobileVerified: json['is_mobile_verified'] as bool?,
      role: json['role'] as int?,
      profile: json['profile'] as String?,
      rememberToken: json['remember_token'] as String?,
      authDto: json['auth'] != null ? AuthDto.fromJson(json['auth']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'country_code': countryCode,
      'phone': phone,
      'is_email_verified': isEmailVerified,
      'is_mobile_verified': isMobileVerified,
      'role': role,
      'profile': profile,
      'remember_token': rememberToken,
      'auth': authDto?.toJson(),
    };
  }
}

class AuthDto {
  final String? tokenType;
  final int? expiresIn;
  final String? accessToken;
  final String? refreshToken;

  AuthDto({
    this.tokenType,
    this.expiresIn,
    this.accessToken,
    this.refreshToken,
  });

  factory AuthDto.fromJson(Map<String, dynamic> json) {
    return AuthDto(
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as int?,
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token_type': tokenType,
      'expires_in': expiresIn,
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }
}
