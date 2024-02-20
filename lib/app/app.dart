import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/authentication_service_impl.dart';
import '../ui/bottom_sheets/notice/notice_sheet.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/views/forgot_password/forgot_password_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/lesson_quiz/lesson_quiz_view.dart';
import '../ui/views/lessons/lessons_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/people/people_view.dart';
import '../ui/views/picture_quiz/picture_quiz_view.dart';
import '../ui/views/play/play_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/sign_in/sign_in_view.dart';
import '../ui/views/speed_typing/speed_typing_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/strokes_multiplayer/strokes_multiplayer_view.dart';
import '../ui/views/text_quiz/text_quiz_view.dart';
import '../ui/views/typing_sound/typing_sound_view.dart';
import 'package:Steno_Game/services/authentication_service.dart';
import 'package:Steno_Game/ui/views/achievement/achievement_view.dart';
import 'package:Steno_Game/ui/views/picture_topic/picture_topic_view.dart';
import 'package:Steno_Game/ui/views/text_topic/text_topic_view.dart';
import 'package:Steno_Game/ui/views/strokes_play/strokes_play_view.dart';
import 'package:Steno_Game/ui/views/typing_play/typing_play_view.dart';
import 'package:Steno_Game/ui/views/quiz_game_stroke/quiz_game_stroke_view.dart';
import 'package:Steno_Game/ui/views/stroke_exercise/stroke_exercise_view.dart';
import 'package:Steno_Game/ui/views/typing_exercise/typing_exercise_view.dart';
import 'package:Steno_Game/services/shared_preference_service.dart';
import 'package:Steno_Game/services/image_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: LessonQuizView),
    MaterialRoute(page: LessonsView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: PeopleView),
    MaterialRoute(page: PictureQuizView),
    MaterialRoute(page: PlayView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SpeedTypingView),
    MaterialRoute(page: StrokesMultiplayerView),
    MaterialRoute(page: TextQuizView),
    MaterialRoute(page: TypingSoundView),
    MaterialRoute(page: AchievementView),
    MaterialRoute(page: PictureTopicView),
    MaterialRoute(page: TextTopicView),
    MaterialRoute(page: StrokesPlayView),
    MaterialRoute(page: TypingPlayView),
    MaterialRoute(page: QuizGameStrokeView),
    MaterialRoute(page: StrokeExerciseView),
    MaterialRoute(page: TypingExerciseView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(
        classType: AuthenticationServiceImpl, asType: AuthenticationService),
    LazySingleton(classType: SharedPreferenceService),
    LazySingleton(classType: ImageService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
