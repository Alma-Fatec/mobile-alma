import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/url.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'alma_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AlmaApi {
  factory AlmaApi(Dio dio, {String baseUrl}) = _AlmaApi;

  @GET("/classesBlock")
  Future<List<ClassBlock>> getAllClassesBlockPaginated(
    @Query("page") int page,
    @Query("limit") int limit,
  );

  @POST("/users")
  Future<User> signup(@Body() User user);

  @POST("/session/login")
  Future<AuthUser> login(@Body() User loginUser);
}
