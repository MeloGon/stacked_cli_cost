import 'package:flutter/material.dart';
import 'package:seal_gon_app/ui/common/app_strings.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked/stacked.dart';
import 'package:seal_gon_app/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ShadButton(
                      onPressed: viewModel.goToCostCalculator,
                      width: double.infinity,
                      height: 60,
                      child: const Text(ksAdmin),
                    ),
                    verticalSpaceMedium,
                    ShadButton(
                      onPressed: () {},
                      width: double.infinity,
                      height: 60,
                      child: const Text(ksConsult),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
