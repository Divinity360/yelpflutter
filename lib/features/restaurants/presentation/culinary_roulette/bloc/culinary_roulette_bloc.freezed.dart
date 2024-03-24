// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'culinary_roulette_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CulinaryRouletteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, String term,
            TickerProvider? vsync, String? openNow, int? radius)
        rouletteRestaurantSearched,
    required TResult Function(Restaurant restaurant) selectedRestaurantSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult? Function(Restaurant restaurant)? selectedRestaurantSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult Function(Restaurant restaurant)? selectedRestaurantSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RouletteRestaurantSearched value)
        rouletteRestaurantSearched,
    required TResult Function(_SelectedRestaurantSet value)
        selectedRestaurantSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult? Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CulinaryRouletteEventCopyWith<$Res> {
  factory $CulinaryRouletteEventCopyWith(CulinaryRouletteEvent value,
          $Res Function(CulinaryRouletteEvent) then) =
      _$CulinaryRouletteEventCopyWithImpl<$Res, CulinaryRouletteEvent>;
}

/// @nodoc
class _$CulinaryRouletteEventCopyWithImpl<$Res,
        $Val extends CulinaryRouletteEvent>
    implements $CulinaryRouletteEventCopyWith<$Res> {
  _$CulinaryRouletteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RouletteRestaurantSearchedImplCopyWith<$Res> {
  factory _$$RouletteRestaurantSearchedImplCopyWith(
          _$RouletteRestaurantSearchedImpl value,
          $Res Function(_$RouletteRestaurantSearchedImpl) then) =
      __$$RouletteRestaurantSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String location,
      String term,
      TickerProvider? vsync,
      String? openNow,
      int? radius});
}

/// @nodoc
class __$$RouletteRestaurantSearchedImplCopyWithImpl<$Res>
    extends _$CulinaryRouletteEventCopyWithImpl<$Res,
        _$RouletteRestaurantSearchedImpl>
    implements _$$RouletteRestaurantSearchedImplCopyWith<$Res> {
  __$$RouletteRestaurantSearchedImplCopyWithImpl(
      _$RouletteRestaurantSearchedImpl _value,
      $Res Function(_$RouletteRestaurantSearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? term = null,
    Object? vsync = freezed,
    Object? openNow = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$RouletteRestaurantSearchedImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      vsync: freezed == vsync
          ? _value.vsync
          : vsync // ignore: cast_nullable_to_non_nullable
              as TickerProvider?,
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

class _$RouletteRestaurantSearchedImpl implements _RouletteRestaurantSearched {
  const _$RouletteRestaurantSearchedImpl(
      {this.location = '',
      this.term = '',
      this.vsync,
      this.openNow,
      this.radius});

  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final String term;
  @override
  final TickerProvider? vsync;
  @override
  final String? openNow;
  @override
  final int? radius;

  @override
  String toString() {
    return 'CulinaryRouletteEvent.rouletteRestaurantSearched(location: $location, term: $term, vsync: $vsync, openNow: $openNow, radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouletteRestaurantSearchedImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.vsync, vsync) || other.vsync == vsync) &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, location, term, vsync, openNow, radius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouletteRestaurantSearchedImplCopyWith<_$RouletteRestaurantSearchedImpl>
      get copyWith => __$$RouletteRestaurantSearchedImplCopyWithImpl<
          _$RouletteRestaurantSearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, String term,
            TickerProvider? vsync, String? openNow, int? radius)
        rouletteRestaurantSearched,
    required TResult Function(Restaurant restaurant) selectedRestaurantSet,
  }) {
    return rouletteRestaurantSearched(location, term, vsync, openNow, radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult? Function(Restaurant restaurant)? selectedRestaurantSet,
  }) {
    return rouletteRestaurantSearched?.call(
        location, term, vsync, openNow, radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult Function(Restaurant restaurant)? selectedRestaurantSet,
    required TResult orElse(),
  }) {
    if (rouletteRestaurantSearched != null) {
      return rouletteRestaurantSearched(location, term, vsync, openNow, radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RouletteRestaurantSearched value)
        rouletteRestaurantSearched,
    required TResult Function(_SelectedRestaurantSet value)
        selectedRestaurantSet,
  }) {
    return rouletteRestaurantSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult? Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
  }) {
    return rouletteRestaurantSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
    required TResult orElse(),
  }) {
    if (rouletteRestaurantSearched != null) {
      return rouletteRestaurantSearched(this);
    }
    return orElse();
  }
}

abstract class _RouletteRestaurantSearched implements CulinaryRouletteEvent {
  const factory _RouletteRestaurantSearched(
      {final String location,
      final String term,
      final TickerProvider? vsync,
      final String? openNow,
      final int? radius}) = _$RouletteRestaurantSearchedImpl;

  String get location;
  String get term;
  TickerProvider? get vsync;
  String? get openNow;
  int? get radius;
  @JsonKey(ignore: true)
  _$$RouletteRestaurantSearchedImplCopyWith<_$RouletteRestaurantSearchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedRestaurantSetImplCopyWith<$Res> {
  factory _$$SelectedRestaurantSetImplCopyWith(
          _$SelectedRestaurantSetImpl value,
          $Res Function(_$SelectedRestaurantSetImpl) then) =
      __$$SelectedRestaurantSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$SelectedRestaurantSetImplCopyWithImpl<$Res>
    extends _$CulinaryRouletteEventCopyWithImpl<$Res,
        _$SelectedRestaurantSetImpl>
    implements _$$SelectedRestaurantSetImplCopyWith<$Res> {
  __$$SelectedRestaurantSetImplCopyWithImpl(_$SelectedRestaurantSetImpl _value,
      $Res Function(_$SelectedRestaurantSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
  }) {
    return _then(_$SelectedRestaurantSetImpl(
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

class _$SelectedRestaurantSetImpl implements _SelectedRestaurantSet {
  const _$SelectedRestaurantSetImpl(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'CulinaryRouletteEvent.selectedRestaurantSet(restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedRestaurantSetImpl &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedRestaurantSetImplCopyWith<_$SelectedRestaurantSetImpl>
      get copyWith => __$$SelectedRestaurantSetImplCopyWithImpl<
          _$SelectedRestaurantSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location, String term,
            TickerProvider? vsync, String? openNow, int? radius)
        rouletteRestaurantSearched,
    required TResult Function(Restaurant restaurant) selectedRestaurantSet,
  }) {
    return selectedRestaurantSet(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult? Function(Restaurant restaurant)? selectedRestaurantSet,
  }) {
    return selectedRestaurantSet?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location, String term, TickerProvider? vsync,
            String? openNow, int? radius)?
        rouletteRestaurantSearched,
    TResult Function(Restaurant restaurant)? selectedRestaurantSet,
    required TResult orElse(),
  }) {
    if (selectedRestaurantSet != null) {
      return selectedRestaurantSet(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RouletteRestaurantSearched value)
        rouletteRestaurantSearched,
    required TResult Function(_SelectedRestaurantSet value)
        selectedRestaurantSet,
  }) {
    return selectedRestaurantSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult? Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
  }) {
    return selectedRestaurantSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RouletteRestaurantSearched value)?
        rouletteRestaurantSearched,
    TResult Function(_SelectedRestaurantSet value)? selectedRestaurantSet,
    required TResult orElse(),
  }) {
    if (selectedRestaurantSet != null) {
      return selectedRestaurantSet(this);
    }
    return orElse();
  }
}

abstract class _SelectedRestaurantSet implements CulinaryRouletteEvent {
  const factory _SelectedRestaurantSet(final Restaurant restaurant) =
      _$SelectedRestaurantSetImpl;

  Restaurant get restaurant;
  @JsonKey(ignore: true)
  _$$SelectedRestaurantSetImplCopyWith<_$SelectedRestaurantSetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CulinaryRouletteState _$CulinaryRouletteStateFromJson(
    Map<String, dynamic> json) {
  return _CulinaryRouletteState.fromJson(json);
}

/// @nodoc
mixin _$CulinaryRouletteState {
  CulinaryRouletteStatus get status => throw _privateConstructorUsedError;
  List<Restaurant>? get restaurantList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CulinaryRouletteStateCopyWith<CulinaryRouletteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CulinaryRouletteStateCopyWith<$Res> {
  factory $CulinaryRouletteStateCopyWith(CulinaryRouletteState value,
          $Res Function(CulinaryRouletteState) then) =
      _$CulinaryRouletteStateCopyWithImpl<$Res, CulinaryRouletteState>;
  @useResult
  $Res call(
      {CulinaryRouletteStatus status,
      List<Restaurant>? restaurantList,
      String? error});
}

/// @nodoc
class _$CulinaryRouletteStateCopyWithImpl<$Res,
        $Val extends CulinaryRouletteState>
    implements $CulinaryRouletteStateCopyWith<$Res> {
  _$CulinaryRouletteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? restaurantList = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CulinaryRouletteStatus,
      restaurantList: freezed == restaurantList
          ? _value.restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CulinaryRouletteStateImplCopyWith<$Res>
    implements $CulinaryRouletteStateCopyWith<$Res> {
  factory _$$CulinaryRouletteStateImplCopyWith(
          _$CulinaryRouletteStateImpl value,
          $Res Function(_$CulinaryRouletteStateImpl) then) =
      __$$CulinaryRouletteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CulinaryRouletteStatus status,
      List<Restaurant>? restaurantList,
      String? error});
}

/// @nodoc
class __$$CulinaryRouletteStateImplCopyWithImpl<$Res>
    extends _$CulinaryRouletteStateCopyWithImpl<$Res,
        _$CulinaryRouletteStateImpl>
    implements _$$CulinaryRouletteStateImplCopyWith<$Res> {
  __$$CulinaryRouletteStateImplCopyWithImpl(_$CulinaryRouletteStateImpl _value,
      $Res Function(_$CulinaryRouletteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? restaurantList = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CulinaryRouletteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CulinaryRouletteStatus,
      restaurantList: freezed == restaurantList
          ? _value._restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CulinaryRouletteStateImpl implements _CulinaryRouletteState {
  const _$CulinaryRouletteStateImpl(
      {this.status = CulinaryRouletteStatus.initial,
      final List<Restaurant>? restaurantList,
      this.error})
      : _restaurantList = restaurantList;

  factory _$CulinaryRouletteStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CulinaryRouletteStateImplFromJson(json);

  @override
  @JsonKey()
  final CulinaryRouletteStatus status;
  final List<Restaurant>? _restaurantList;
  @override
  List<Restaurant>? get restaurantList {
    final value = _restaurantList;
    if (value == null) return null;
    if (_restaurantList is EqualUnmodifiableListView) return _restaurantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'CulinaryRouletteState(status: $status, restaurantList: $restaurantList, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CulinaryRouletteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._restaurantList, _restaurantList) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_restaurantList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CulinaryRouletteStateImplCopyWith<_$CulinaryRouletteStateImpl>
      get copyWith => __$$CulinaryRouletteStateImplCopyWithImpl<
          _$CulinaryRouletteStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CulinaryRouletteStateImplToJson(
      this,
    );
  }
}

abstract class _CulinaryRouletteState implements CulinaryRouletteState {
  const factory _CulinaryRouletteState(
      {final CulinaryRouletteStatus status,
      final List<Restaurant>? restaurantList,
      final String? error}) = _$CulinaryRouletteStateImpl;

  factory _CulinaryRouletteState.fromJson(Map<String, dynamic> json) =
      _$CulinaryRouletteStateImpl.fromJson;

  @override
  CulinaryRouletteStatus get status;
  @override
  List<Restaurant>? get restaurantList;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CulinaryRouletteStateImplCopyWith<_$CulinaryRouletteStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
