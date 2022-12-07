import 'package:alma/initialise_application.dart';
import 'package:alma/initialise_class_block.dart';
import 'package:alma/speaker_controller.dart';
import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/api/alma_interceptor_token.dart';
import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/blocs/assignment_bloc/assignment_bloc.dart';
import 'package:alma/src/blocs/classblock_bloc/classblock_bloc.dart';
import 'package:alma/src/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:alma/src/repositories/assignment_repository.dart';
import 'package:alma/src/repositories/class_block_repository.dart';
import 'package:alma/src/repositories/class_room_repository.dart';
import 'package:alma/src/repositories/user_repository.dart';
import 'package:alma/src/services/assignment_service.dart';
import 'package:alma/src/services/classblock_service.dart';
import 'package:alma/src/services/navigation_service.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/objectbox.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'src/pages/pages.dart';

class AlmaApp extends StatelessWidget {
  const AlmaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = Dio()..interceptors.add(AlmaInterceptorToken());
    final almaApi = AlmaApi(dio);

    final classBlockRepository = ClassBlockRepository(api: almaApi, boxProvider: ObjectBoxProvider.get());
    final classRoomRepository = ClassRoomRepository(api: almaApi, boxProvider: ObjectBoxProvider.get());
    final assignmentRepository = AssignmentRepository(api: almaApi, boxProvider: ObjectBoxProvider.get());
    final classblockService = ClassblockService(
      classBlockRepository: classBlockRepository,
      classRoomRepository: classRoomRepository,
      assignmentRepository: assignmentRepository,
    );
    final userService = UserService(
      userRepository: UserRepository(
        almaApi: almaApi,
        boxProvider: ObjectBoxProvider.get(),
      ),
    );
    final navigationService = NavigationService(
      classRoomRepository: classRoomRepository,
      assignmentRepository: assignmentRepository,
    );
    final assignmentService = AssignmentService(assignmentRepository: assignmentRepository);
    final applicationBloc = ApplicationBloc(userService: userService);
    final AudioSpeakerController audioController = AudioSpeakerController(AudioControls());
    final classBlockBloc = ClassBlockBloc(
      classblockService: classblockService,
      userService: userService,
    );
    final assignmentBloc = AssignmentBloc(assignmentService: assignmentService);
    final navigationBloc = NavigationBloc(navigationService: navigationService);

    return MultiProvider(
      providers: [
        Provider<UserService>.value(value: userService),
        ChangeNotifierProvider<AudioSpeakerController>.value(value: audioController)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ApplicationBloc>.value(value: applicationBloc),
          BlocProvider<NavigationBloc>.value(value: navigationBloc),
          BlocProvider<AssignmentBloc>.value(value: assignmentBloc),
          BlocProvider<ClassBlockBloc>.value(value: classBlockBloc),
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
          routes: {
            InitialiseClassBlock.route: (context) => const InitialiseClassBlock(),
            SplashScreen.route: (context) => const SplashScreen(),
            HomePage.route: (context) => const HomePage(),
            LoginPage.route: (context) => const LoginPage(),
            SignupPage.route: (context) => const SignupPage(),
            FinishedPage.route: (context) => const FinishedPage(),
          },
          home: const InitialiseApplication(),
        ),
      ),
    );
  }
}
