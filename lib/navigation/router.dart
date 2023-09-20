import 'package:auto_route/auto_route.dart';
import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/ui/pages/authentication/mail_login_page/mail_login_page.dart';
import 'package:isportal/ui/pages/authentication/phone_login_page/phone_login_page.dart';
import 'package:isportal/ui/pages/cv_page/cv_create/cv_create_page.dart';
import 'package:isportal/ui/pages/cv_page/cv_page/cv_page_page.dart';

import 'package:isportal/ui/pages/homepage/homepage.dart';
import 'package:isportal/ui/pages/job_details_page/apply_job/apply_job_page.dart';
import 'package:isportal/ui/pages/job_details_page/job_details_page/job_details_page.dart';
import 'package:isportal/ui/pages/joblist_page/joblist_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/homepage',
          page: HomeRoute.page,
          title: (context, data) {
            return "Ana Sayfa";
          },
        ),
        AutoRoute(
          path: '/cvedit',
          guards: [CvGuard()],
          title: (context, data) {
            return "Özgeçmişim";
          },
          page: CvCreateRoute.page,
        ),
        AutoRoute(
          path: '/cvpage',
          initial: true,
          guards: [CvGuard()],
          title: (context, data) {
            return "Özgeçmişim";
          },
          page: CvRoute.page,
        ),
        AutoRoute(
          path: '/jobs',
          page: JobListRoute.page,
          title: (context, data) {
            return "İlanlar";
          },
        ),
        AutoRoute(
          path: '/:name/:id/',
          page: JobDetailsRoute.page,
        ),
        AutoRoute(
          path: '/maillogin',
          page: MailLoginRoute.page,
          title: (context, data) {
            return "Giriş Sayfası";
          },
          guards: [MailGuard()],
        ),
        AutoRoute(
          path: '/phonelogin',
          page: PhoneLoginRoute.page,
          title: (context, data) {
            return "Giriş Sayfası";
          },
          guards: [PhoneGuard()],
        ),
      ];
}

LocalStorageService localStorageService = LocalStorageService();

class PhoneGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    String? ticket = await localStorageService.getValue('key');
    if (ticket == null || ticket == "") {
      resolver.next(true);
    } else {
      router.pushNamed('/cvpage');
    }
  }
}

class MailGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    String? ticket = await localStorageService.getValue('key');
    if (ticket == null || ticket == "") {
      resolver.next(true);
    } else {
      router.pushNamed('/cvpage');
    }
  }
}

class CvGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    String? ticket = await localStorageService.getValue('key');
    if (ticket == null || ticket == "") {
      router.pushNamed('/homepage');
    } else {
      resolver.next(true);
    }
  }
}

class LoginGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    String? ticket = await localStorageService.getValue('key');
    if (ticket != null || ticket != "") {}
  }
}
