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
import 'package:login_cubit/features/restaurants/presentation/mystery_search/bloc/mystery_search_bloc.dart';
import 'package:login_cubit/shared/presentation/widgets/appBar.dart';
import 'package:login_cubit/shared/presentation/widgets/appLoader.dart';
import 'package:login_cubit/shared/presentation/widgets/appTextField.dart';
import 'package:login_cubit/shared/presentation/widgets/outlineButton.dart';
import 'package:login_cubit/shared/presentation/widgets/primaryButton.dart';
import 'package:login_cubit/shared/presentation/widgets/restaurantCard.dart';
import 'package:login_cubit/shared/presentation/widgets/revealCounterText.dart';

class MysterySearchPage extends StatefulWidget {
  @override
  _MysterySearchPageState createState() => _MysterySearchPageState();
}

class _MysterySearchPageState extends State<MysterySearchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MysterySearchBloc>(),
      child: MysterySearchPageView(),
    );
  }
}

class MysterySearchPageView extends StatefulWidget {
  const MysterySearchPageView({Key? key}) : super(key: key);

  @override
  State<MysterySearchPageView> createState() => _MysterySearchPageViewState();
}

class _MysterySearchPageViewState extends State<MysterySearchPageView> {
  final GlobalKey<FormState> _mysterySearchFormKey = GlobalKey<FormState>();
  final TextEditingController termController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MysterySearchBloc, MysterySearchState>(
        listenWhen: (prev, state) =>
            state.status == MysterySearchStatus.searchFailed,
        listener: (context, state) {
          Helpers.showToast(context, state.error!);
        },
        builder: (context, state) {
          final bloc = context.read<MysterySearchBloc>();
          return Scaffold(
            backgroundColor: AppColors.lightGreenBkg,
            appBar: CustomAppBar(
              text: 'Mystery Search',
              showBackBtn: true,
            ),
            body: SafeArea(
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
                            disabled: state.status.inProgressAndRevealing,
                            onTap: () {
                              if (_mysterySearchFormKey.currentState!
                                  .validate()) {
                                bloc.add(MysterySearchEvent.restaurantSearched(
                                    location: locationController.text,
                                    term: termController.text));
                              }
                            },
                            text: 'Find Spot'),
                        SizedBox(
                          height: 40,
                        ),
                        if (state.status.isLoading) AppLoader(),
                        if (state.status.revealing)
                          RevealCounterText(
                            text: state.revealCounter.toString(),
                          ),
                        if (state.status.isSuccessful)
                          RestaurantCard(restaurant: state.restaurant!),
                      ]),
                ),
              ),
            ),
          );
        });
  }
}

