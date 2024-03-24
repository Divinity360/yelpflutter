import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/core/utils/injections.dart';
import 'package:login_cubit/core/utils/validation.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';
import 'package:login_cubit/features/restaurants/presentation/culinary_roulette/bloc/culinary_roulette_bloc.dart';
import 'package:login_cubit/features/restaurants/presentation/mystery_search/bloc/mystery_search_bloc.dart';
import 'package:login_cubit/shared/presentation/widgets/appBar.dart';
import 'package:login_cubit/shared/presentation/widgets/appLoader.dart';
import 'package:login_cubit/shared/presentation/widgets/appTextField.dart';
import 'package:login_cubit/shared/presentation/widgets/outlineButton.dart';
import 'package:login_cubit/shared/presentation/widgets/primaryButton.dart';
import 'package:login_cubit/shared/presentation/widgets/restaurantCard.dart';
import 'package:login_cubit/shared/presentation/widgets/revealCounterText.dart';
import 'package:roulette/roulette.dart';

class CulinaryRoulettePage extends StatefulWidget {
  @override
  _CulinaryRoulettePageState createState() => _CulinaryRoulettePageState();
}

class _CulinaryRoulettePageState extends State<CulinaryRoulettePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CulinaryRouletteBloc>(),
      child: CulinaryRoulettePageView(),
    );
  }
}

class CulinaryRoulettePageView extends StatefulWidget {
  const CulinaryRoulettePageView({Key? key}) : super(key: key);

  @override
  State<CulinaryRoulettePageView> createState() =>
      _CulinaryRoulettePageViewState();
}

class _CulinaryRoulettePageViewState extends State<CulinaryRoulettePageView>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _mysterySearchFormKey = GlobalKey<FormState>();
  final TextEditingController termController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  RouletteController? _rouletteController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CulinaryRouletteBloc, CulinaryRouletteState>(
        listener: (context, state) async {
      if (state.status == CulinaryRouletteStatus.spinRoulette) {
        await onRouletteSpin(state, context);
      } else if (state.status == CulinaryRouletteStatus.searchFailed) {
        Helpers.showToast(context, state.error!);
      }
    }, builder: (context, state) {
      final bloc = context.read<CulinaryRouletteBloc>();
      return Scaffold(
        backgroundColor: AppColors.lightGreenBkg,
        appBar: CustomAppBar(
          text: 'Culinary Roulette',
          showBackBtn: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _mysterySearchFormKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: AppTextField(
                          controller: termController,
                          hint: 'Restaurant Name',
                          validator: AppValidation.validateEmptyField,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: AppTextField(
                          controller: locationController,
                          hint: 'Location',
                          validator: AppValidation.validateEmptyField,
                        ),
                      ),
                      PrimaryButton(
                          disabled: state.status.inProgressOrRouletteSpinning,
                          onTap: () {
                            if (_mysterySearchFormKey.currentState!
                                .validate()) {
                              bloc.add(CulinaryRouletteEvent
                                  .rouletteRestaurantSearched(
                                      location: locationController.text,
                                      term: termController.text,
                                      vsync: this));
                            }
                          },
                          text: 'Spin the wheel'),
                      SizedBox(
                        height: 40,
                      ),
                      if (state.status.isLoading) AppLoader(),
                      if (state.status.isSuccessful)
                        RestaurantCard(restaurant: state.restaurantList![0]),
                      if (state.status.isRouletteSpinningOrSuccessful &&
                          _rouletteController != null)
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Roulette(
                              controller: _rouletteController!,
                              style: RouletteStyle(
                                  centerStickerColor: AppColors.lightGreenBkg,
                                  dividerThickness: 1,
                                  textStyle: AppTheme.bodyMediumTextStyle,
                                  centerStickSizePercent: .4),
                            ))
                    ]),
              ),
            ),
          ),
        ),
      );
    });
  }

  /// Setup roulette
  Future<void> onRouletteSpin(
      CulinaryRouletteState state, BuildContext context) async {
    /// Display first 5 result on roulette to avoid crowding
    final restaurants = state.restaurantList!.length > 5
        ? state.restaurantList!.sublist(0, 5)
        : state.restaurantList!;

    final group = RouletteGroup.uniformImages(
      restaurants.length,
      colorBuilder: (index) => AppColors.primaryColor,
      imageBuilder: (index) => NetworkImage(restaurants[index].imageUrl!),
      textBuilder: (index) => restaurants[index].name,
      styleBuilder: (index) => AppTheme.bodyMediumTextStyle,
    );
    _rouletteController = RouletteController(group: group, vsync: this);

    /// Select random restaurant from list
    final randomIndex = Random().nextInt(restaurants.length);
    await _rouletteController!.rollTo(randomIndex, offset: -4.5);

    /// Send event with selected restaurant from spin
    context.read<CulinaryRouletteBloc>().add(
        CulinaryRouletteEvent.selectedRestaurantSet(restaurants[randomIndex]));
  }
}
