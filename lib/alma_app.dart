import 'package:alma/initialise_application.dart';
import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/api/alma_interceptor_token.dart';
import 'package:alma/src/blocs/application.dart';
import 'package:alma/src/repositories/class_block_repository.dart';
import 'package:alma/src/repositories/user_repository.dart';
import 'package:alma/src/services/classblock_service.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AlmaApp extends StatelessWidget {
  const AlmaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = Dio()..interceptors.add(AlmaInterceptorToken());
    final almaApi = AlmaApi(dio);
    final classblockService = ClassblockService(classBlockRepository: ClassBlockRepository(api: almaApi));
    final userService = UserService(userRepository: UserRepository(almaApi: almaApi));
    final applicationBloc = ApplicationBloc(userService: userService);

    return MultiProvider(
      providers: [
        Provider<ClassblockService>.value(value: classblockService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ApplicationBloc>.value(value: applicationBloc),
        ],
        child: MaterialApp(
          title: 'Alma',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AlmaColors.blueAlma,
            scaffoldBackgroundColor: AlmaColors.whiteAlma,
            appBarTheme: const AppBarTheme(
              toolbarHeight: 70,
              backgroundColor: AlmaColors.blueAlma,
              centerTitle: false,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
            ),
          ),
          home: const InitialiseApplication(),
        ),
      ),
    );
  }
}
