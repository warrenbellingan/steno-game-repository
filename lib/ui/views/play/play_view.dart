import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'play_viewmodel.dart';

class PlayView extends StackedView<PlayViewModel> {
  const PlayView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      PlayViewModel viewModel,
      Widget? child,
      ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.red[400]!,
                  Colors.red[500]!,
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  'STROKES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit, size: 100, color: Colors.white),
                        Text(
                          'RANK',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.red[400]!,
                  Colors.red[500]!,
                ],
              ),
            ),
            child: Column(
              children: [
                Text(
                  'TYPING',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.keyboard, size: 100, color: Colors.white),
                        Text(
                          'RANK',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  PlayViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      PlayViewModel();
}
