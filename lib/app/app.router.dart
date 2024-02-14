// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i18;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i19;
import 'package:Steno_Game/ui/views/achievement/achievement_view.dart' as _i17;
import 'package:Steno_Game/ui/views/forgot_password/forgot_password_view.dart'
    as _i4;
import 'package:Steno_Game/ui/views/home/home_view.dart' as _i2;
import 'package:Steno_Game/ui/views/lesson_quiz/lesson_quiz_view.dart' as _i5;
import 'package:Steno_Game/ui/views/lessons/lessons_view.dart' as _i6;
import 'package:Steno_Game/ui/views/login/login_view.dart' as _i7;
import 'package:Steno_Game/ui/views/people/people_view.dart' as _i8;
import 'package:Steno_Game/ui/views/picture_quiz/picture_quiz_view.dart' as _i9;
import 'package:Steno_Game/ui/views/play/play_view.dart' as _i10;
import 'package:Steno_Game/ui/views/profile/profile_view.dart' as _i11;
import 'package:Steno_Game/ui/views/sign_in/sign_in_view.dart' as _i12;
import 'package:Steno_Game/ui/views/speed_typing/speed_typing_view.dart'
    as _i13;
import 'package:Steno_Game/ui/views/startup/startup_view.dart' as _i3;
import 'package:Steno_Game/ui/views/strokes_multiplayer/strokes_multiplayer_view.dart'
    as _i14;
import 'package:Steno_Game/ui/views/text_quiz/text_quiz_view.dart' as _i15;
import 'package:Steno_Game/ui/views/typing_sound/typing_sound_view.dart'
    as _i16;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const lessonQuizView = '/lesson-quiz-view';

  static const lessonsView = '/lessons-view';

  static const loginView = '/login-view';

  static const peopleView = '/people-view';

  static const pictureQuizView = '/picture-quiz-view';

  static const playView = '/play-view';

  static const profileView = '/profile-view';

  static const signInView = '/sign-in-view';

  static const speedTypingView = '/speed-typing-view';

  static const strokesMultiplayerView = '/strokes-multiplayer-view';

  static const textQuizView = '/text-quiz-view';

  static const typingSoundView = '/typing-sound-view';

  static const achievementView = '/achievement-view';

  static const all = <String>{
    homeView,
    startupView,
    forgotPasswordView,
    lessonQuizView,
    lessonsView,
    loginView,
    peopleView,
    pictureQuizView,
    playView,
    profileView,
    signInView,
    speedTypingView,
    strokesMultiplayerView,
    textQuizView,
    typingSoundView,
    achievementView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i4.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.lessonQuizView,
      page: _i5.LessonQuizView,
    ),
    _i1.RouteDef(
      Routes.lessonsView,
      page: _i6.LessonsView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i7.LoginView,
    ),
    _i1.RouteDef(
      Routes.peopleView,
      page: _i8.PeopleView,
    ),
    _i1.RouteDef(
      Routes.pictureQuizView,
      page: _i9.PictureQuizView,
    ),
    _i1.RouteDef(
      Routes.playView,
      page: _i10.PlayView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i11.ProfileView,
    ),
    _i1.RouteDef(
      Routes.signInView,
      page: _i12.SignInView,
    ),
    _i1.RouteDef(
      Routes.speedTypingView,
      page: _i13.SpeedTypingView,
    ),
    _i1.RouteDef(
      Routes.strokesMultiplayerView,
      page: _i14.StrokesMultiplayerView,
    ),
    _i1.RouteDef(
      Routes.textQuizView,
      page: _i15.TextQuizView,
    ),
    _i1.RouteDef(
      Routes.typingSoundView,
      page: _i16.TypingSoundView,
    ),
    _i1.RouteDef(
      Routes.achievementView,
      page: _i17.AchievementView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.ForgotPasswordView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.ForgotPasswordView(),
        settings: data,
      );
    },
    _i5.LessonQuizView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LessonQuizView(),
        settings: data,
      );
    },
    _i6.LessonsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LessonsView(),
        settings: data,
      );
    },
    _i7.LoginView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.LoginView(),
        settings: data,
      );
    },
    _i8.PeopleView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.PeopleView(),
        settings: data,
      );
    },
    _i9.PictureQuizView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PictureQuizView(),
        settings: data,
      );
    },
    _i10.PlayView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PlayView(),
        settings: data,
      );
    },
    _i11.ProfileView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ProfileView(),
        settings: data,
      );
    },
    _i12.SignInView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.SignInView(),
        settings: data,
      );
    },
    _i13.SpeedTypingView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.SpeedTypingView(),
        settings: data,
      );
    },
    _i14.StrokesMultiplayerView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.StrokesMultiplayerView(),
        settings: data,
      );
    },
    _i15.TextQuizView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.TextQuizView(),
        settings: data,
      );
    },
    _i16.TypingSoundView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.TypingSoundView(),
        settings: data,
      );
    },
    _i17.AchievementView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.AchievementView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i19.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLessonQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.lessonQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLessonsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.lessonsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPeopleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.peopleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPictureQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.pictureQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.playView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSpeedTypingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.speedTypingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStrokesMultiplayerView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.strokesMultiplayerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTextQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.textQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTypingSoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.typingSoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAchievementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.achievementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLessonQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.lessonQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLessonsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.lessonsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPeopleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.peopleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPictureQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.pictureQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.playView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSpeedTypingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.speedTypingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStrokesMultiplayerView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.strokesMultiplayerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTextQuizView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.textQuizView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTypingSoundView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.typingSoundView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAchievementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.achievementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
