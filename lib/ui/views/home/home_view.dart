import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/custom_widget/game_search_textfield.dart';
import 'package:Steno_Game/ui/views/people/people_view.dart';
import 'package:Steno_Game/ui/views/play/play_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../constants/game_ui_text.dart';
import '../../custom_widget/achievement_card.dart';
import '../../custom_widget/game_body.dart';
import '../../custom_widget/game_chip.dart';
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                primaryShadow(),
              ],
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: viewModel.goToProfileView,
                  child: PlayerProfile(),
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        width: 300,
                        height: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 5, color: Colors.black)),
                        child: Column(
                          children: [
                            Expanded(child: Container()),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                'HINT',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 34,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                LessonsView(),
                PlayView(),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GameChip(label: 'All'),
                          GameChip(label: 'Completed'),
                          GameChip(label: 'Incomplete'),
                        ],
                      ),
                      AchievementCard(
                        isComplete: true,
                        title: "Noob",
                        description: "Reach Level 5",
                      ),
                      AchievementCard(
                        isComplete: true,
                        title: "Pro",
                        description: "Reach Level 20",
                      ),
                      AchievementCard(
                        isComplete: false,
                        title: "Expert",
                        description: "Reach Level 50",
                      ),
                    ],
                  ),
                ),
                PeopleView(),
              ],
            ),
          ),
          NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.white,
              labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE35629),
                    );
                  } else {
                    return const TextStyle(
                      fontSize: 11,
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
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.red,
                    size: 40,
                  ),
                  label: GameUIText.menuText,
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.play_lesson_rounded,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.play_lesson_rounded,
                    color: Colors.red,
                    size: 40,
                  ),
                  label: GameUIText.lessonText,
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.play_circle,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.play_circle,
                    color: Colors.red,
                    size: 40,
                  ),
                  label: GameUIText.playText,
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.badge_rounded,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.badge_rounded,
                    color: Colors.red,
                    size: 40,
                  ),
                  label: GameUIText.achievementText,
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.people_alt_outlined,
                    size: 30,
                  ),
                  selectedIcon: Icon(
                    Icons.people_alt_outlined,
                    color: Colors.red,
                    size: 40,
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
}
