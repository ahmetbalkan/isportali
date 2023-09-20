// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MailLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MailLoginPage(),
      );
    },
    PhoneLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneLoginPage(),
      );
    },
    CvCreateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CvCreatePage(),
      );
    },
    CvRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CvPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    JobListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JobListPage(),
      );
    },
    ApplyJobRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ApplyJobPage(),
      );
    },
    JobDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobDetailsRouteArgs>(
          orElse: () => JobDetailsRouteArgs(
                id: pathParams.getString('id'),
                name: pathParams.getString('name'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: JobDetailsPage(
          key: args.key,
          id: args.id,
          name: args.name,
        ),
      );
    },
  };
}

/// generated route for
/// [MailLoginPage]
class MailLoginRoute extends PageRouteInfo<void> {
  const MailLoginRoute({List<PageRouteInfo>? children})
      : super(
          MailLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'MailLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhoneLoginPage]
class PhoneLoginRoute extends PageRouteInfo<void> {
  const PhoneLoginRoute({List<PageRouteInfo>? children})
      : super(
          PhoneLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CvCreatePage]
class CvCreateRoute extends PageRouteInfo<void> {
  const CvCreateRoute({List<PageRouteInfo>? children})
      : super(
          CvCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'CvCreateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CvPage]
class CvRoute extends PageRouteInfo<void> {
  const CvRoute({List<PageRouteInfo>? children})
      : super(
          CvRoute.name,
          initialChildren: children,
        );

  static const String name = 'CvRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JobListPage]
class JobListRoute extends PageRouteInfo<void> {
  const JobListRoute({List<PageRouteInfo>? children})
      : super(
          JobListRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ApplyJobPage]
class ApplyJobRoute extends PageRouteInfo<void> {
  const ApplyJobRoute({List<PageRouteInfo>? children})
      : super(
          ApplyJobRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplyJobRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JobDetailsPage]
class JobDetailsRoute extends PageRouteInfo<JobDetailsRouteArgs> {
  JobDetailsRoute({
    Key? key,
    required String id,
    required String name,
    List<PageRouteInfo>? children,
  }) : super(
          JobDetailsRoute.name,
          args: JobDetailsRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
          rawPathParams: {
            'id': id,
            'name': name,
          },
          initialChildren: children,
        );

  static const String name = 'JobDetailsRoute';

  static const PageInfo<JobDetailsRouteArgs> page =
      PageInfo<JobDetailsRouteArgs>(name);
}

class JobDetailsRouteArgs {
  const JobDetailsRouteArgs({
    this.key,
    required this.id,
    required this.name,
  });

  final Key? key;

  final String id;

  final String name;

  @override
  String toString() {
    return 'JobDetailsRouteArgs{key: $key, id: $id, name: $name}';
  }
}
