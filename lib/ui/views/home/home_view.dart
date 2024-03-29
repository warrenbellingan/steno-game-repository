import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/constants/game_color.dart';
import 'package:Steno_Game/ui/custom_widget/game_loading.dart';
import 'package:Steno_Game/ui/custom_widget/game_search_textfield.dart';
import 'package:Steno_Game/ui/views/achievement/achievement_view.dart';
import 'package:Steno_Game/ui/views/people/people_view.dart';
import 'package:Steno_Game/ui/views/play/play_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../constants/game_ui_text.dart';
import '../../custom_widget/game_body.dart';
import '../../custom_widget/player_profile.dart';
import '../lessons/lessons_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return GameBody(
      body: viewModel.isBusy
          ? GameLoading(
              label: "Getting User",
            )
          : Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      primaryShadow(),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: viewModel.goToProfileView,
                        child: PlayerProfile(
                          name: viewModel.user.name,
                          level: viewModel.user.level,
                        ),
                      ),
                      Text(
                        "Score: $viewModel.user.score ",
                        style: const TextStyle(
                          color: GameColor.primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          wordSpacing: 2,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: PageView(
                    controller: viewModel.pageController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    onPageChanged: viewModel.onPageChanged,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            GameSearchTextField(),
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: GameColor.primaryGradient,
                                boxShadow: [primaryShadow()],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Practice Strokes',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1),
                                  ),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: GameColor.primaryGradient,
                                boxShadow: [primaryShadow()],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Practice Typing',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1),
                                  ),
                                  Icon(
                                    Icons.keyboard,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      LessonsView(),
                      PlayView(),
                      AchievementView(),
                      PeopleView(),
                    ],
                  ),
                ),
                NavigationBarTheme(
                  data: NavigationBarThemeData(
                    indicatorColor: Colors.white,
                    labelTextStyle:
                        MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: GameColor.primaryColor,
                          );
                        } else {
                          return const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          );
                        }
                      },
                    ),
                  ),
                  child: NavigationBar(
                    backgroundColor: Colors.white,
                    height: 70,
                    shadowColor: Color(0xFF948D8D),
                    selectedIndex: viewModel.currentPageIndex,
                    onDestinationSelected: viewModel.onDestinationSelected,
                    destinations: [
                      NavigationDestination(
                        icon: Icon(
                          Icons.home,
                          size: 25,
                        ),
                        selectedIcon: Icon(
                          Icons.home,
                          color: GameColor.primaryColor,
                          size: 30,
                        ),
                        label: GameUIText.menuText,
                      ),
                      NavigationDestination(
                        icon: Icon(
                          Icons.play_lesson_rounded,
                          size: 25,
                        ),
                        selectedIcon: Icon(
                          Icons.play_lesson_rounded,
                          color: GameColor.primaryColor,
                          size: 30,
                        ),
                        label: GameUIText.lessonText,
                      ),
                      NavigationDestination(
                        icon: Icon(
                          Icons.play_circle,
                          size: 25,
                        ),
                        selectedIcon: Icon(
                          Icons.play_circle,
                          color: GameColor.primaryColor,
                          size: 30,
                        ),
                        label: GameUIText.playText,
                      ),
                      NavigationDestination(
                        icon: Icon(
                          Icons.badge_rounded,
                          size: 25,
                        ),
                        selectedIcon: Icon(
                          Icons.badge_rounded,
                          color: GameColor.primaryColor,
                          size: 30,
                        ),
                        label: GameUIText.achievementText,
                      ),
                      NavigationDestination(
                        icon: Icon(
                          Icons.people_alt_outlined,
                          size: 25,
                        ),
                        selectedIcon: Icon(
                          Icons.people_alt_outlined,
                          color: GameColor.primaryColor,
                          size: 30,
                        ),
                        label: GameUIText.peopleText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
    //   Scaffold(
    //
    //
    //
    //
    //
    //   // body: SafeArea(child: Center(child: RawKeyboardListener(
    //   //   focusNode: viewModel.focusNode,
    //   //   onKey: viewModel.onKeyReceived,
    //   //   child: Column(
    //   //     mainAxisAlignment: MainAxisAlignment.center,
    //   //     children: [
    //   //         Text(viewModel.keyText, style: TextStyle(fontSize: 50)),
    //   //       ElevatedButton(onPressed: () => viewModel.bntPressed(context), child: Text("Hello"))
    //   //     ],
    //   //   ),
    //   // ),)),
    // );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.init();
  }
}
