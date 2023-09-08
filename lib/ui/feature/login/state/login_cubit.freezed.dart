// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  EmailInput get email => throw _privateConstructorUsedError;
  TextFieldInput get password => throw _privateConstructorUsedError;
  bool get formIsValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  LoginFormStatus get loginStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {EmailInput email,
      TextFieldInput password,
      bool formIsValid,
      FormzSubmissionStatus status,
      LoginFormStatus loginStatus});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formIsValid = null,
    Object? status = null,
    Object? loginStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      formIsValid: null == formIsValid
          ? _value.formIsValid
          : formIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginFormStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput email,
      TextFieldInput password,
      bool formIsValid,
      FormzSubmissionStatus status,
      LoginFormStatus loginStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formIsValid = null,
    Object? status = null,
    Object? loginStatus = null,
  }) {
    return _then(_$_Initial(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      formIsValid: null == formIsValid
          ? _value.formIsValid
          : formIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginFormStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial(
      {this.email = const EmailInput.pure(),
      this.password = const TextFieldInput.pure(),
      this.formIsValid = false,
      this.status = FormzSubmissionStatus.initial,
      this.loginStatus = LoginFormStatus.initial});

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final TextFieldInput password;
  @override
  @JsonKey()
  final bool formIsValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final LoginFormStatus loginStatus;

  @override
  String toString() {
    return 'LoginState.initial(email: $email, password: $password, formIsValid: $formIsValid, status: $status, loginStatus: $loginStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formIsValid, formIsValid) ||
                other.formIsValid == formIsValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, formIsValid, status, loginStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)
        initial,
  }) {
    return initial(email, password, formIsValid, status, loginStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)?
        initial,
  }) {
    return initial?.call(email, password, formIsValid, status, loginStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EmailInput email,
            TextFieldInput password,
            bool formIsValid,
            FormzSubmissionStatus status,
            LoginFormStatus loginStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, password, formIsValid, status, loginStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  factory _Initial(
      {final EmailInput email,
      final TextFieldInput password,
      final bool formIsValid,
      final FormzSubmissionStatus status,
      final LoginFormStatus loginStatus}) = _$_Initial;

  @override
  EmailInput get email;
  @override
  TextFieldInput get password;
  @override
  bool get formIsValid;
  @override
  FormzSubmissionStatus get status;
  @override
  LoginFormStatus get loginStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
