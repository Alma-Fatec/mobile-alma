import 'package:alma/src/utils/shared_pref.dart';
import 'package:alma/src/utils/url.dart';
import 'package:dio/dio.dart';

class AlmaInterceptorToken extends InterceptorsWrapper {
  final dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  String? token;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    await _loadToken();
    if (token != null && token!.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshed = await _refreshToken();
      if (refreshed) {
        err.requestOptions.headers['Authorization'] = 'Bearer $token';
        final opts = Options(
          method: err.requestOptions.method,
          headers: err.requestOptions.headers,
        );
        final req = await dio.request(
          err.requestOptions.path,
          options: opts,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );

        return handler.resolve(req);
      }
    }

    super.onError(err, handler);
  }

  Future<void> _loadToken() async {
    token = await SharedPref().read('token');
  }

  Future<bool> _refreshToken() async {
    try {
      final userId = await SharedPref().read('user_id');
      final response = await dio.post('/session/refresh', data: {
        'user_id': userId,
      });
      if (response.statusCode == 201) {
        _saveToken(response.data['token']);
        return true;
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> _saveToken(String newToken) async {
    token = newToken;
    await SharedPref().save('token', newToken);
  }
}
