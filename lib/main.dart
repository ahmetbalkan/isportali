import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/job_cubit/job_cubit.dart';
import 'package:isportal/blocs/job_list_cubit/job_list_cubit.dart';
import 'package:isportal/data/repositories/authentication_repository.dart';
import 'package:isportal/data/repositories/cv_page_repository.dart';
import 'package:isportal/data/repositories/job_repository.dart';
import 'package:isportal/themes/theme.dart';
import 'package:flutter/material.dart';
import 'navigation/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider<CvPageCubit>(
                create: (context) => CvPageCubit(cvRepository: CvRepository())),
            BlocProvider<AuthCubit>(
                create: (context) =>
                    AuthCubit(authRepository: AuthRepository())),
            BlocProvider<JobCubit>(
                create: (context) => JobCubit(jobRepository: JobRepository())),
            BlocProvider<JobListCubit>(
                create: (context) =>
                    JobListCubit(jobRepository: JobRepository())),
          ],
          child: MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.lightTheme,
          )),
    );
  }
}
