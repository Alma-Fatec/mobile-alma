// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alma_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AlmaApi implements AlmaApi {
  _AlmaApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://projetoalma.live';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<User> signup(user) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(user.toJson());
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/users',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthUser> login(loginUser) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginUser.toJson());
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<AuthUser>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/session/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthUser.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaginatedResult<ClassBlock>> getClassesBlockByStudentPaginated(
      request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'': request.toJson()};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginatedResult<ClassBlock>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/classesBlock',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginatedResult<ClassBlock>.fromJson(
      _result.data!,
      (json) => ClassBlock.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<PaginatedResult<ClassRoom>> getClassesByBlockIdPaginated(
      request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'': request.toJson()};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginatedResult<ClassRoom>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/classes',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaginatedResult<ClassRoom>.fromJson(
      _result.data!,
      (json) => ClassRoom.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
