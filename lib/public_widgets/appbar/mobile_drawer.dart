import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Image.asset("images/png/logo.png"),
        ),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.createdUserModel.isSuccess == false
                ? const BeforeLoginDrawer()
                : const AfterLoginDrawer();
          },
        ),
      ]),
    );
  }
}

class BeforeLoginDrawer extends StatelessWidget {
  const BeforeLoginDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              const Icon(
                FontAwesomeIcons.mobileScreen,
                color: AppColors.primary,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'Telefon ile Giriş Yap',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: AppColors.primary),
              ),
            ],
          ),
          onTap: () {
            context.router.replace(const PhoneLoginRoute());
          },
        ),
        const Divider(),
        ListTile(
          title: Row(
            children: [
              SvgPicture.asset(
                "assets/images/svg/yenibirislogo.svg",
                alignment: Alignment.centerLeft,
                height: 15,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'Hesabınla Giriş Yap',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: AppColors.primary),
              ),
            ],
          ),
          onTap: () {
            context.router.replace(const MailLoginRoute());
          },
        ),
        const Divider(),
        ListTile(
          title: Row(
            children: [
              const Icon(
                FontAwesomeIcons.listCheck,
                color: AppColors.primary,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'İlanları görüntüle',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: AppColors.primary),
              ),
            ],
          ),
          onTap: () {
            context.router.replace(const JobListRoute());
          },
        ),
        const Divider(),
      ],
    );
  }
}

class AfterLoginDrawer extends StatelessWidget {
  const AfterLoginDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              const Icon(
                FontAwesomeIcons.file,
                color: AppColors.primary,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'Özgeçmişim',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: AppColors.primary),
              ),
            ],
          ),
          onTap: () {
            context.router.replace(const CvRoute());
          },
        ),
        const Divider(),
        ListTile(
          title: Row(
            children: [
              const Icon(
                FontAwesomeIcons.list,
                color: AppColors.primary,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'İş İlanları',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: AppColors.primary),
              ),
              const Divider(),
            ],
          ),
          onTap: () {
            context.router.replace(const JobListRoute());
          },
        ),
        const Divider(),
        ListTile(
          title: Row(
            children: [
              const Icon(
                FontAwesomeIcons.arrowRightFromBracket,
                color: Colors.red,
              ),
              SizedBox(
                width: context.witdhSize20,
              ),
              Text(
                'Çıkış Yap',
                style: Theme.of(context)
                    .textTheme
                    .title1(context)
                    .copyWith(color: Colors.red),
              ),
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const Divider(),
      ],
    );
  }
}
