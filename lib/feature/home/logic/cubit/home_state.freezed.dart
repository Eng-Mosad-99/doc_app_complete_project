// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns<T> on HomeState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SpecializationLoading<T> value)?  specializationLoading,TResult Function( SpecializationSuccess<T> value)?  specializationSuccess,TResult Function( SpecializationFailure<T> value)?  specializationFailure,TResult Function( DoctorsSuccess<T> value)?  doctorsSuccess,TResult Function( DoctorsFailure<T> value)?  doctorsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationFailure() when specializationFailure != null:
return specializationFailure(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsFailure() when doctorsFailure != null:
return doctorsFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SpecializationLoading<T> value)  specializationLoading,required TResult Function( SpecializationSuccess<T> value)  specializationSuccess,required TResult Function( SpecializationFailure<T> value)  specializationFailure,required TResult Function( DoctorsSuccess<T> value)  doctorsSuccess,required TResult Function( DoctorsFailure<T> value)  doctorsFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return specializationLoading(_that);case SpecializationSuccess():
return specializationSuccess(_that);case SpecializationFailure():
return specializationFailure(_that);case DoctorsSuccess():
return doctorsSuccess(_that);case DoctorsFailure():
return doctorsFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SpecializationLoading<T> value)?  specializationLoading,TResult? Function( SpecializationSuccess<T> value)?  specializationSuccess,TResult? Function( SpecializationFailure<T> value)?  specializationFailure,TResult? Function( DoctorsSuccess<T> value)?  doctorsSuccess,TResult? Function( DoctorsFailure<T> value)?  doctorsFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationFailure() when specializationFailure != null:
return specializationFailure(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsFailure() when doctorsFailure != null:
return doctorsFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationLoading,TResult Function( List<SpecializationsData?>? specializationDataList)?  specializationSuccess,TResult Function( ApiErrorModel? error)?  specializationFailure,TResult Function( List<Doctors?>? doctorsDataList)?  doctorsSuccess,TResult Function()?  doctorsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationDataList);case SpecializationFailure() when specializationFailure != null:
return specializationFailure(_that.error);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsDataList);case DoctorsFailure() when doctorsFailure != null:
return doctorsFailure();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationLoading,required TResult Function( List<SpecializationsData?>? specializationDataList)  specializationSuccess,required TResult Function( ApiErrorModel? error)  specializationFailure,required TResult Function( List<Doctors?>? doctorsDataList)  doctorsSuccess,required TResult Function()  doctorsFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return specializationLoading();case SpecializationSuccess():
return specializationSuccess(_that.specializationDataList);case SpecializationFailure():
return specializationFailure(_that.error);case DoctorsSuccess():
return doctorsSuccess(_that.doctorsDataList);case DoctorsFailure():
return doctorsFailure();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationLoading,TResult? Function( List<SpecializationsData?>? specializationDataList)?  specializationSuccess,TResult? Function( ApiErrorModel? error)?  specializationFailure,TResult? Function( List<Doctors?>? doctorsDataList)?  doctorsSuccess,TResult? Function()?  doctorsFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationDataList);case SpecializationFailure() when specializationFailure != null:
return specializationFailure(_that.error);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsDataList);case DoctorsFailure() when doctorsFailure != null:
return doctorsFailure();case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements HomeState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.initial()';
}


}




/// @nodoc


class SpecializationLoading<T> implements HomeState<T> {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.specializationLoading()';
}


}




/// @nodoc


class SpecializationSuccess<T> implements HomeState<T> {
  const SpecializationSuccess(final  List<SpecializationsData?>? specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationsData?>? _specializationDataList;
 List<SpecializationsData?>? get specializationDataList {
  final value = _specializationDataList;
  if (value == null) return null;
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSuccessCopyWith<T, SpecializationSuccess<T>> get copyWith => _$SpecializationSuccessCopyWithImpl<T, SpecializationSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess<T>&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeState<$T>.specializationSuccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess<T> value, $Res Function(SpecializationSuccess<T>) _then) = _$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsData?>? specializationDataList
});




}
/// @nodoc
class _$SpecializationSuccessCopyWithImpl<T,$Res>
    implements $SpecializationSuccessCopyWith<T, $Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess<T> _self;
  final $Res Function(SpecializationSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = freezed,}) {
  return _then(SpecializationSuccess<T>(
freezed == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsData?>?,
  ));
}


}

/// @nodoc


class SpecializationFailure<T> implements HomeState<T> {
  const SpecializationFailure(this.error);
  

 final  ApiErrorModel? error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationFailureCopyWith<T, SpecializationFailure<T>> get copyWith => _$SpecializationFailureCopyWithImpl<T, SpecializationFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState<$T>.specializationFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationFailureCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $SpecializationFailureCopyWith(SpecializationFailure<T> value, $Res Function(SpecializationFailure<T>) _then) = _$SpecializationFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel? error
});




}
/// @nodoc
class _$SpecializationFailureCopyWithImpl<T,$Res>
    implements $SpecializationFailureCopyWith<T, $Res> {
  _$SpecializationFailureCopyWithImpl(this._self, this._then);

  final SpecializationFailure<T> _self;
  final $Res Function(SpecializationFailure<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(SpecializationFailure<T>(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel?,
  ));
}


}

/// @nodoc


class DoctorsSuccess<T> implements HomeState<T> {
  const DoctorsSuccess(final  List<Doctors?>? doctorsDataList): _doctorsDataList = doctorsDataList;
  

 final  List<Doctors?>? _doctorsDataList;
 List<Doctors?>? get doctorsDataList {
  final value = _doctorsDataList;
  if (value == null) return null;
  if (_doctorsDataList is EqualUnmodifiableListView) return _doctorsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<T, DoctorsSuccess<T>> get copyWith => _$DoctorsSuccessCopyWithImpl<T, DoctorsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess<T>&&const DeepCollectionEquality().equals(other._doctorsDataList, _doctorsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsDataList));

@override
String toString() {
  return 'HomeState<$T>.doctorsSuccess(doctorsDataList: $doctorsDataList)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess<T> value, $Res Function(DoctorsSuccess<T>) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctorsDataList
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<T,$Res>
    implements $DoctorsSuccessCopyWith<T, $Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess<T> _self;
  final $Res Function(DoctorsSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsDataList = freezed,}) {
  return _then(DoctorsSuccess<T>(
freezed == doctorsDataList ? _self._doctorsDataList : doctorsDataList // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorsFailure<T> implements HomeState<T> {
  const DoctorsFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsFailure<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.doctorsFailure()';
}


}




// dart format on
