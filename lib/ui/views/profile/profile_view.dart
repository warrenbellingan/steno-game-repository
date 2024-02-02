import 'package:Steno_Game/ui/common/ui_helpers.dart';
import 'package:Steno_Game/ui/constants/game_color.dart';
import 'package:Steno_Game/ui/constants/game_png.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../custom_widget/edit_profile_card.dart';
import '../../custom_widget/game_bar.dart';
import '../../custom_widget/game_body.dart';
import '../../custom_widget/game_button.dart';
import '../../custom_widget/game_textButton.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return GameBody(
        body: SingleChildScrollView(
      child: Column(
        children: [
          GameBar(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(GamePng.gameAvatarPath),
                  backgroundColor: GameColor.secondaryColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GameTextButton(title: "Change Picture", onClick: () {}),
                  GameTextButton(title: "View Picture", onClick: () {}),
                ],
              )
            ],
          ),
          EditProfileCard(
            text: 'Warren',
            onClick: () {},
            label: 'Name',
          ),
          EditProfileCard(
            text: 'warren.bellingan@gmail.com',
            onClick: () {},
            label: 'Email',
          ),
          EditProfileCard(
            text: 'Change Password***',
            onClick: () {},
            label: 'Password',
          ),
          verticalSpaceMedium,
          GameButton(text: 'Log out', onClick: () {})
        ],
      ),
    ));
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
