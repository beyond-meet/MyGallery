//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignUpDto {
  /// Returns a new [SignUpDto] instance.
  SignUpDto({
    required this.email,
    this.linkToken,
    required this.name,
    required this.password,
  });

  /// User email
  String email;

  /// OAuth link token to consume on successful login
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkToken;

  /// User name
  String name;

  /// User password
  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignUpDto &&
    other.email == email &&
    other.linkToken == linkToken &&
    other.name == name &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (linkToken == null ? 0 : linkToken!.hashCode) +
    (name.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'SignUpDto[email=$email, linkToken=$linkToken, name=$name, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.linkToken != null) {
      json[r'linkToken'] = this.linkToken;
    } else {
    //  json[r'linkToken'] = null;
    }
      json[r'name'] = this.name;
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [SignUpDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignUpDto? fromJson(dynamic value) {
    upgradeDto(value, "SignUpDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SignUpDto(
        email: mapValueOfType<String>(json, r'email')!,
        linkToken: mapValueOfType<String>(json, r'linkToken'),
        name: mapValueOfType<String>(json, r'name')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<SignUpDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignUpDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignUpDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignUpDto> mapFromJson(dynamic json) {
    final map = <String, SignUpDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignUpDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignUpDto-objects as value to a dart map
  static Map<String, List<SignUpDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignUpDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignUpDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'name',
    'password',
  };
}

