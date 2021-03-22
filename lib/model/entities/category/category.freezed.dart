// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

// ignore: unused_element
  _Category call({@required String title, List<Todo> todos = const <Todo>[]}) {
    return _Category(
      title: title,
      todos: todos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String get title;
  List<Todo> get todos;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({String title, List<Todo> todos});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object title = freezed,
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Todo> todos});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object title = freezed,
    Object todos = freezed,
  }) {
    return _then(_Category(
      title: title == freezed ? _value.title : title as String,
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_Category extends _Category {
  _$_Category({@required this.title, this.todos = const <Todo>[]})
      : assert(title != null),
        assert(todos != null),
        super._();

  @override
  final String title;
  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'Category(title: $title, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);
}

abstract class _Category extends Category {
  _Category._() : super._();
  factory _Category({@required String title, List<Todo> todos}) = _$_Category;

  @override
  String get title;
  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith;
}
