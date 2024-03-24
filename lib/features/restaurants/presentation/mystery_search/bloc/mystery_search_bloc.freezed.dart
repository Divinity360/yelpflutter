// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mystery_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MysterySearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String location, String term, String? openNow, int? radius)
        restaurantSearched,
    required TResult Function(Restaurant restaurant) restaurantRevealed,
    required TResult Function(int counter, Restaurant restaurant)
        revealTimerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult? Function(Restaurant restaurant)? restaurantRevealed,
    TResult? Function(int counter, Restaurant restaurant)? revealTimerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult Function(Restaurant restaurant)? restaurantRevealed,
    TResult Function(int counter, Restaurant restaurant)? revealTimerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantSearched value) restaurantSearched,
    required TResult Function(_RestaurantRevealed value) restaurantRevealed,
    required TResult Function(_RevealTimerUpdated value) revealTimerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RestaurantSearched value)? restaurantSearched,
    TResult? Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult? Function(_RevealTimerUpdated value)? revealTimerUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantSearched value)? restaurantSearched,
    TResult Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult Function(_RevealTimerUpdated value)? revealTimerUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MysterySearchEventCopyWith<$Res> {
  factory $MysterySearchEventCopyWith(
          MysterySearchEvent value, $Res Function(MysterySearchEvent) then) =
      _$MysterySearchEventCopyWithImpl<$Res, MysterySearchEvent>;
}

/// @nodoc
class _$MysterySearchEventCopyWithImpl<$Res, $Val extends MysterySearchEvent>
    implements $MysterySearchEventCopyWith<$Res> {
  _$MysterySearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RestaurantSearchedImplCopyWith<$Res> {
  factory _$$RestaurantSearchedImplCopyWith(_$RestaurantSearchedImpl value,
          $Res Function(_$RestaurantSearchedImpl) then) =
      __$$RestaurantSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location, String term, String? openNow, int? radius});
}

/// @nodoc
class __$$RestaurantSearchedImplCopyWithImpl<$Res>
    extends _$MysterySearchEventCopyWithImpl<$Res, _$RestaurantSearchedImpl>
    implements _$$RestaurantSearchedImplCopyWith<$Res> {
  __$$RestaurantSearchedImplCopyWithImpl(_$RestaurantSearchedImpl _value,
      $Res Function(_$RestaurantSearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? term = null,
    Object? openNow = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$RestaurantSearchedImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      openNow: freezed == openNow
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as String?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RestaurantSearchedImpl implements _RestaurantSearched {
  const _$RestaurantSearchedImpl(
      {this.location = '', this.term = '', this.openNow, this.radius});

  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final String term;
  @override
  final String? openNow;
  @override
  final int? radius;

  @override
  String toString() {
    return 'MysterySearchEvent.restaurantSearched(location: $location, term: $term, openNow: $openNow, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantSearchedImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, term, openNow, radius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantSearchedImplCopyWith<_$RestaurantSearchedImpl> get copyWith =>
      __$$RestaurantSearchedImplCopyWithImpl<_$RestaurantSearchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String location, String term, String? openNow, int? radius)
        restaurantSearched,
    required TResult Function(Restaurant restaurant) restaurantRevealed,
    required TResult Function(int counter, Restaurant restaurant)
        revealTimerUpdated,
  }) {
    return restaurantSearched(location, term, openNow, radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult? Function(Restaurant restaurant)? restaurantRevealed,
    TResult? Function(int counter, Restaurant restaurant)? revealTimerUpdated,
  }) {
    return restaurantSearched?.call(location, term, openNow, radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult Function(Restaurant restaurant)? restaurantRevealed,
    TResult Function(int counter, Restaurant restaurant)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (restaurantSearched != null) {
      return restaurantSearched(location, term, openNow, radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantSearched value) restaurantSearched,
    required TResult Function(_RestaurantRevealed value) restaurantRevealed,
    required TResult Function(_RevealTimerUpdated value) revealTimerUpdated,
  }) {
    return restaurantSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RestaurantSearched value)? restaurantSearched,
    TResult? Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult? Function(_RevealTimerUpdated value)? revealTimerUpdated,
  }) {
    return restaurantSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantSearched value)? restaurantSearched,
    TResult Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult Function(_RevealTimerUpdated value)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (restaurantSearched != null) {
      return restaurantSearched(this);
    }
    return orElse();
  }
}

abstract class _RestaurantSearched implements MysterySearchEvent {
  const factory _RestaurantSearched(
      {final String location,
      final String term,
      final String? openNow,
      final int? radius}) = _$RestaurantSearchedImpl;

  String get location;
  String get term;
  String? get openNow;
  int? get radius;
  @JsonKey(ignore: true)
  _$$RestaurantSearchedImplCopyWith<_$RestaurantSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantRevealedImplCopyWith<$Res> {
  factory _$$RestaurantRevealedImplCopyWith(_$RestaurantRevealedImpl value,
          $Res Function(_$RestaurantRevealedImpl) then) =
      __$$RestaurantRevealedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$RestaurantRevealedImplCopyWithImpl<$Res>
    extends _$MysterySearchEventCopyWithImpl<$Res, _$RestaurantRevealedImpl>
    implements _$$RestaurantRevealedImplCopyWith<$Res> {
  __$$RestaurantRevealedImplCopyWithImpl(_$RestaurantRevealedImpl _value,
      $Res Function(_$RestaurantRevealedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
  }) {
    return _then(_$RestaurantRevealedImpl(
      null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc

class _$RestaurantRevealedImpl implements _RestaurantRevealed {
  const _$RestaurantRevealedImpl(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'MysterySearchEvent.restaurantRevealed(restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantRevealedImpl &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantRevealedImplCopyWith<_$RestaurantRevealedImpl> get copyWith =>
      __$$RestaurantRevealedImplCopyWithImpl<_$RestaurantRevealedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String location, String term, String? openNow, int? radius)
        restaurantSearched,
    required TResult Function(Restaurant restaurant) restaurantRevealed,
    required TResult Function(int counter, Restaurant restaurant)
        revealTimerUpdated,
  }) {
    return restaurantRevealed(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult? Function(Restaurant restaurant)? restaurantRevealed,
    TResult? Function(int counter, Restaurant restaurant)? revealTimerUpdated,
  }) {
    return restaurantRevealed?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult Function(Restaurant restaurant)? restaurantRevealed,
    TResult Function(int counter, Restaurant restaurant)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (restaurantRevealed != null) {
      return restaurantRevealed(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantSearched value) restaurantSearched,
    required TResult Function(_RestaurantRevealed value) restaurantRevealed,
    required TResult Function(_RevealTimerUpdated value) revealTimerUpdated,
  }) {
    return restaurantRevealed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RestaurantSearched value)? restaurantSearched,
    TResult? Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult? Function(_RevealTimerUpdated value)? revealTimerUpdated,
  }) {
    return restaurantRevealed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantSearched value)? restaurantSearched,
    TResult Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult Function(_RevealTimerUpdated value)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (restaurantRevealed != null) {
      return restaurantRevealed(this);
    }
    return orElse();
  }
}

abstract class _RestaurantRevealed implements MysterySearchEvent {
  const factory _RestaurantRevealed(final Restaurant restaurant) =
      _$RestaurantRevealedImpl;

  Restaurant get restaurant;
  @JsonKey(ignore: true)
  _$$RestaurantRevealedImplCopyWith<_$RestaurantRevealedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RevealTimerUpdatedImplCopyWith<$Res> {
  factory _$$RevealTimerUpdatedImplCopyWith(_$RevealTimerUpdatedImpl value,
          $Res Function(_$RevealTimerUpdatedImpl) then) =
      __$$RevealTimerUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int counter, Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$RevealTimerUpdatedImplCopyWithImpl<$Res>
    extends _$MysterySearchEventCopyWithImpl<$Res, _$RevealTimerUpdatedImpl>
    implements _$$RevealTimerUpdatedImplCopyWith<$Res> {
  __$$RevealTimerUpdatedImplCopyWithImpl(_$RevealTimerUpdatedImpl _value,
      $Res Function(_$RevealTimerUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? restaurant = null,
  }) {
    return _then(_$RevealTimerUpdatedImpl(
      null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc

class _$RevealTimerUpdatedImpl implements _RevealTimerUpdated {
  const _$RevealTimerUpdatedImpl(this.counter, this.restaurant);

  @override
  final int counter;
  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'MysterySearchEvent.revealTimerUpdated(counter: $counter, restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevealTimerUpdatedImpl &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevealTimerUpdatedImplCopyWith<_$RevealTimerUpdatedImpl> get copyWith =>
      __$$RevealTimerUpdatedImplCopyWithImpl<_$RevealTimerUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String location, String term, String? openNow, int? radius)
        restaurantSearched,
    required TResult Function(Restaurant restaurant) restaurantRevealed,
    required TResult Function(int counter, Restaurant restaurant)
        revealTimerUpdated,
  }) {
    return revealTimerUpdated(counter, restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult? Function(Restaurant restaurant)? restaurantRevealed,
    TResult? Function(int counter, Restaurant restaurant)? revealTimerUpdated,
  }) {
    return revealTimerUpdated?.call(counter, restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String location, String term, String? openNow, int? radius)?
        restaurantSearched,
    TResult Function(Restaurant restaurant)? restaurantRevealed,
    TResult Function(int counter, Restaurant restaurant)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (revealTimerUpdated != null) {
      return revealTimerUpdated(counter, restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RestaurantSearched value) restaurantSearched,
    required TResult Function(_RestaurantRevealed value) restaurantRevealed,
    required TResult Function(_RevealTimerUpdated value) revealTimerUpdated,
  }) {
    return revealTimerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RestaurantSearched value)? restaurantSearched,
    TResult? Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult? Function(_RevealTimerUpdated value)? revealTimerUpdated,
  }) {
    return revealTimerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RestaurantSearched value)? restaurantSearched,
    TResult Function(_RestaurantRevealed value)? restaurantRevealed,
    TResult Function(_RevealTimerUpdated value)? revealTimerUpdated,
    required TResult orElse(),
  }) {
    if (revealTimerUpdated != null) {
      return revealTimerUpdated(this);
    }
    return orElse();
  }
}

abstract class _RevealTimerUpdated implements MysterySearchEvent {
  const factory _RevealTimerUpdated(
          final int counter, final Restaurant restaurant) =
      _$RevealTimerUpdatedImpl;

  int get counter;
  Restaurant get restaurant;
  @JsonKey(ignore: true)
  _$$RevealTimerUpdatedImplCopyWith<_$RevealTimerUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MysterySearchState _$MysterySearchStateFromJson(Map<String, dynamic> json) {
  return _MysterySearchState.fromJson(json);
}

/// @nodoc
mixin _$MysterySearchState {
  MysterySearchStatus get status => throw _privateConstructorUsedError;
  int get revealCounter => throw _privateConstructorUsedError;
  Restaurant? get restaurant => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MysterySearchStateCopyWith<MysterySearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MysterySearchStateCopyWith<$Res> {
  factory $MysterySearchStateCopyWith(
          MysterySearchState value, $Res Function(MysterySearchState) then) =
      _$MysterySearchStateCopyWithImpl<$Res, MysterySearchState>;
  @useResult
  $Res call(
      {MysterySearchStatus status,
      int revealCounter,
      Restaurant? restaurant,
      String? error});

  $RestaurantCopyWith<$Res>? get restaurant;
}

/// @nodoc
class _$MysterySearchStateCopyWithImpl<$Res, $Val extends MysterySearchState>
    implements $MysterySearchStateCopyWith<$Res> {
  _$MysterySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? revealCounter = null,
    Object? restaurant = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MysterySearchStatus,
      revealCounter: null == revealCounter
          ? _value.revealCounter
          : revealCounter // ignore: cast_nullable_to_non_nullable
              as int,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res>? get restaurant {
    if (_value.restaurant == null) {
      return null;
    }

    return $RestaurantCopyWith<$Res>(_value.restaurant!, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MysterySearchStateImplCopyWith<$Res>
    implements $MysterySearchStateCopyWith<$Res> {
  factory _$$MysterySearchStateImplCopyWith(_$MysterySearchStateImpl value,
          $Res Function(_$MysterySearchStateImpl) then) =
      __$$MysterySearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MysterySearchStatus status,
      int revealCounter,
      Restaurant? restaurant,
      String? error});

  @override
  $RestaurantCopyWith<$Res>? get restaurant;
}

/// @nodoc
class __$$MysterySearchStateImplCopyWithImpl<$Res>
    extends _$MysterySearchStateCopyWithImpl<$Res, _$MysterySearchStateImpl>
    implements _$$MysterySearchStateImplCopyWith<$Res> {
  __$$MysterySearchStateImplCopyWithImpl(_$MysterySearchStateImpl _value,
      $Res Function(_$MysterySearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? revealCounter = null,
    Object? restaurant = freezed,
    Object? error = freezed,
  }) {
    return _then(_$MysterySearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MysterySearchStatus,
      revealCounter: null == revealCounter
          ? _value.revealCounter
          : revealCounter // ignore: cast_nullable_to_non_nullable
              as int,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MysterySearchStateImpl implements _MysterySearchState {
  const _$MysterySearchStateImpl(
      {this.status = MysterySearchStatus.initial,
      this.revealCounter = 3,
      this.restaurant,
      this.error});

  factory _$MysterySearchStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MysterySearchStateImplFromJson(json);

  @override
  @JsonKey()
  final MysterySearchStatus status;
  @override
  @JsonKey()
  final int revealCounter;
  @override
  final Restaurant? restaurant;
  @override
  final String? error;

  @override
  String toString() {
    return 'MysterySearchState(status: $status, revealCounter: $revealCounter, restaurant: $restaurant, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MysterySearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.revealCounter, revealCounter) ||
                other.revealCounter == revealCounter) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, revealCounter, restaurant, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MysterySearchStateImplCopyWith<_$MysterySearchStateImpl> get copyWith =>
      __$$MysterySearchStateImplCopyWithImpl<_$MysterySearchStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MysterySearchStateImplToJson(
      this,
    );
  }
}

abstract class _MysterySearchState implements MysterySearchState {
  const factory _MysterySearchState(
      {final MysterySearchStatus status,
      final int revealCounter,
      final Restaurant? restaurant,
      final String? error}) = _$MysterySearchStateImpl;

  factory _MysterySearchState.fromJson(Map<String, dynamic> json) =
      _$MysterySearchStateImpl.fromJson;

  @override
  MysterySearchStatus get status;
  @override
  int get revealCounter;
  @override
  Restaurant? get restaurant;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MysterySearchStateImplCopyWith<_$MysterySearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
