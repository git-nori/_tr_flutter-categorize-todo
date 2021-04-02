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
  _Category call(
      {@required int id,
      @required String title,
      List<Todo> todoList = const <Todo>[]}) {
    return _Category(
      id: id,
      title: title,
      todoList: todoList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  int get id;
  String get title;
  List<Todo> get todoList;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({int id, String title, List<Todo> todoList});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object todoList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      todoList: todoList == freezed ? _value.todoList : todoList as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, List<Todo> todoList});
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
    Object id = freezed,
    Object title = freezed,
    Object todoList = freezed,
  }) {
    return _then(_Category(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      todoList: todoList == freezed ? _value.todoList : todoList as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_Category extends _Category {
  _$_Category(
      {@required this.id, @required this.title, this.todoList = const <Todo>[]})
      : assert(id != null),
        assert(title != null),
        assert(todoList != null),
        super._();

  @override
  final int id;
  @override
  final String title;
  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todoList;

  @override
  String toString() {
    return 'Category(id: $id, title: $title, todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.todoList, todoList) ||
                const DeepCollectionEquality()
                    .equals(other.todoList, todoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(todoList);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);
}

abstract class _Category extends Category {
  _Category._() : super._();
  factory _Category(
      {@required int id,
      @required String title,
      List<Todo> todoList}) = _$_Category;

  @override
  int get id;
  @override
  String get title;
  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith;
}
