import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$PokemonOverviews {
  Fragment$PokemonOverviews({
    required this.id,
    this.number,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Fragment$PokemonOverviews.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonOverviews(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonOverviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PokemonOverviews
    on Fragment$PokemonOverviews {
  CopyWith$Fragment$PokemonOverviews<Fragment$PokemonOverviews> get copyWith =>
      CopyWith$Fragment$PokemonOverviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PokemonOverviews<TRes> {
  factory CopyWith$Fragment$PokemonOverviews(
    Fragment$PokemonOverviews instance,
    TRes Function(Fragment$PokemonOverviews) then,
  ) = _CopyWithImpl$Fragment$PokemonOverviews;

  factory CopyWith$Fragment$PokemonOverviews.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonOverviews;

  TRes call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonOverviews<TRes>
    implements CopyWith$Fragment$PokemonOverviews<TRes> {
  _CopyWithImpl$Fragment$PokemonOverviews(
    this._instance,
    this._then,
  );

  final Fragment$PokemonOverviews _instance;

  final TRes Function(Fragment$PokemonOverviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonOverviews(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonOverviews<TRes>
    implements CopyWith$Fragment$PokemonOverviews<TRes> {
  _CopyWithStubImpl$Fragment$PokemonOverviews(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPokemonOverviews = FragmentDefinitionNode(
  name: NameNode(value: 'PokemonOverviews'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Pokemon'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'number'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPokemonOverviews = DocumentNode(definitions: [
  fragmentDefinitionPokemonOverviews,
]);

extension ClientExtension$Fragment$PokemonOverviews on graphql.GraphQLClient {
  void writeFragment$PokemonOverviews({
    required Fragment$PokemonOverviews data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PokemonOverviews',
            document: documentNodeFragmentPokemonOverviews,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PokemonOverviews? readFragment$PokemonOverviews({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PokemonOverviews',
          document: documentNodeFragmentPokemonOverviews,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PokemonOverviews.fromJson(result);
  }
}

class Fragment$PokemonDetails {
  Fragment$PokemonDetails({
    required this.id,
    this.number,
    this.name,
    this.evolutions,
    this.maxHP,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Fragment$PokemonDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$evolutions = json['evolutions'];
    final l$maxHP = json['maxHP'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      evolutions: (l$evolutions as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PokemonDetails$evolutions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      maxHP: (l$maxHP as int?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final List<Fragment$PokemonDetails$evolutions?>? evolutions;

  final int? maxHP;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$evolutions = evolutions;
    _resultData['evolutions'] = l$evolutions?.map((e) => e?.toJson()).toList();
    final l$maxHP = maxHP;
    _resultData['maxHP'] = l$maxHP;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$evolutions = evolutions;
    final l$maxHP = maxHP;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$evolutions == null ? null : Object.hashAll(l$evolutions.map((v) => v)),
      l$maxHP,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$evolutions = evolutions;
    final lOther$evolutions = other.evolutions;
    if (l$evolutions != null && lOther$evolutions != null) {
      if (l$evolutions.length != lOther$evolutions.length) {
        return false;
      }
      for (int i = 0; i < l$evolutions.length; i++) {
        final l$evolutions$entry = l$evolutions[i];
        final lOther$evolutions$entry = lOther$evolutions[i];
        if (l$evolutions$entry != lOther$evolutions$entry) {
          return false;
        }
      }
    } else if (l$evolutions != lOther$evolutions) {
      return false;
    }
    final l$maxHP = maxHP;
    final lOther$maxHP = other.maxHP;
    if (l$maxHP != lOther$maxHP) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PokemonDetails on Fragment$PokemonDetails {
  CopyWith$Fragment$PokemonDetails<Fragment$PokemonDetails> get copyWith =>
      CopyWith$Fragment$PokemonDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PokemonDetails<TRes> {
  factory CopyWith$Fragment$PokemonDetails(
    Fragment$PokemonDetails instance,
    TRes Function(Fragment$PokemonDetails) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails;

  factory CopyWith$Fragment$PokemonDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails;

  TRes call({
    String? id,
    String? number,
    String? name,
    List<Fragment$PokemonDetails$evolutions?>? evolutions,
    int? maxHP,
    String? image,
    String? $__typename,
  });
  TRes evolutions(
      Iterable<Fragment$PokemonDetails$evolutions?>? Function(
              Iterable<
                  CopyWith$Fragment$PokemonDetails$evolutions<
                      Fragment$PokemonDetails$evolutions>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$PokemonDetails<TRes>
    implements CopyWith$Fragment$PokemonDetails<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails _instance;

  final TRes Function(Fragment$PokemonDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? evolutions = _undefined,
    Object? maxHP = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        evolutions: evolutions == _undefined
            ? _instance.evolutions
            : (evolutions as List<Fragment$PokemonDetails$evolutions?>?),
        maxHP: maxHP == _undefined ? _instance.maxHP : (maxHP as int?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes evolutions(
          Iterable<Fragment$PokemonDetails$evolutions?>? Function(
                  Iterable<
                      CopyWith$Fragment$PokemonDetails$evolutions<
                          Fragment$PokemonDetails$evolutions>?>?)
              _fn) =>
      call(
          evolutions: _fn(_instance.evolutions?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PokemonDetails$evolutions(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$PokemonDetails<TRes>
    implements CopyWith$Fragment$PokemonDetails<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    List<Fragment$PokemonDetails$evolutions?>? evolutions,
    int? maxHP,
    String? image,
    String? $__typename,
  }) =>
      _res;

  evolutions(_fn) => _res;
}

const fragmentDefinitionPokemonDetails = FragmentDefinitionNode(
  name: NameNode(value: 'PokemonDetails'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Pokemon'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'number'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'evolutions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'number'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'image'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'maxHP'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPokemonDetails = DocumentNode(definitions: [
  fragmentDefinitionPokemonDetails,
]);

extension ClientExtension$Fragment$PokemonDetails on graphql.GraphQLClient {
  void writeFragment$PokemonDetails({
    required Fragment$PokemonDetails data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PokemonDetails',
            document: documentNodeFragmentPokemonDetails,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PokemonDetails? readFragment$PokemonDetails({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PokemonDetails',
          document: documentNodeFragmentPokemonDetails,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PokemonDetails.fromJson(result);
  }
}

class Fragment$PokemonDetails$evolutions {
  Fragment$PokemonDetails$evolutions({
    required this.id,
    this.number,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Fragment$PokemonDetails$evolutions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$evolutions(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$evolutions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PokemonDetails$evolutions
    on Fragment$PokemonDetails$evolutions {
  CopyWith$Fragment$PokemonDetails$evolutions<
          Fragment$PokemonDetails$evolutions>
      get copyWith => CopyWith$Fragment$PokemonDetails$evolutions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$evolutions<TRes> {
  factory CopyWith$Fragment$PokemonDetails$evolutions(
    Fragment$PokemonDetails$evolutions instance,
    TRes Function(Fragment$PokemonDetails$evolutions) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$evolutions;

  factory CopyWith$Fragment$PokemonDetails$evolutions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$evolutions;

  TRes call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonDetails$evolutions<TRes>
    implements CopyWith$Fragment$PokemonDetails$evolutions<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$evolutions(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$evolutions _instance;

  final TRes Function(Fragment$PokemonDetails$evolutions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$evolutions(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails$evolutions<TRes>
    implements CopyWith$Fragment$PokemonDetails$evolutions<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$evolutions(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPokemons {
  factory Variables$Query$GetPokemons({required int count}) =>
      Variables$Query$GetPokemons._({
        r'count': count,
      });

  Variables$Query$GetPokemons._(this._$data);

  factory Variables$Query$GetPokemons.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$count = data['count'];
    result$data['count'] = (l$count as int);
    return Variables$Query$GetPokemons._(result$data);
  }

  Map<String, dynamic> _$data;

  int get count => (_$data['count'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$count = count;
    result$data['count'] = l$count;
    return result$data;
  }

  CopyWith$Variables$Query$GetPokemons<Variables$Query$GetPokemons>
      get copyWith => CopyWith$Variables$Query$GetPokemons(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPokemons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([l$count]);
  }
}

abstract class CopyWith$Variables$Query$GetPokemons<TRes> {
  factory CopyWith$Variables$Query$GetPokemons(
    Variables$Query$GetPokemons instance,
    TRes Function(Variables$Query$GetPokemons) then,
  ) = _CopyWithImpl$Variables$Query$GetPokemons;

  factory CopyWith$Variables$Query$GetPokemons.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPokemons;

  TRes call({int? count});
}

class _CopyWithImpl$Variables$Query$GetPokemons<TRes>
    implements CopyWith$Variables$Query$GetPokemons<TRes> {
  _CopyWithImpl$Variables$Query$GetPokemons(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPokemons _instance;

  final TRes Function(Variables$Query$GetPokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) =>
      _then(Variables$Query$GetPokemons._({
        ..._instance._$data,
        if (count != _undefined && count != null) 'count': (count as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPokemons<TRes>
    implements CopyWith$Variables$Query$GetPokemons<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPokemons(this._res);

  TRes _res;

  call({int? count}) => _res;
}

class Query$GetPokemons {
  Query$GetPokemons({
    this.pokemons,
    this.$__typename = 'Query',
  });

  factory Query$GetPokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemons = json['pokemons'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons(
      pokemons: (l$pokemons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PokemonOverviews.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PokemonOverviews?>? pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemons = pokemons;
    _resultData['pokemons'] = l$pokemons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemons = pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemons == null ? null : Object.hashAll(l$pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPokemons) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemons = pokemons;
    final lOther$pokemons = other.pokemons;
    if (l$pokemons != null && lOther$pokemons != null) {
      if (l$pokemons.length != lOther$pokemons.length) {
        return false;
      }
      for (int i = 0; i < l$pokemons.length; i++) {
        final l$pokemons$entry = l$pokemons[i];
        final lOther$pokemons$entry = lOther$pokemons[i];
        if (l$pokemons$entry != lOther$pokemons$entry) {
          return false;
        }
      }
    } else if (l$pokemons != lOther$pokemons) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons on Query$GetPokemons {
  CopyWith$Query$GetPokemons<Query$GetPokemons> get copyWith =>
      CopyWith$Query$GetPokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPokemons<TRes> {
  factory CopyWith$Query$GetPokemons(
    Query$GetPokemons instance,
    TRes Function(Query$GetPokemons) then,
  ) = _CopyWithImpl$Query$GetPokemons;

  factory CopyWith$Query$GetPokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons;

  TRes call({
    List<Fragment$PokemonOverviews?>? pokemons,
    String? $__typename,
  });
  TRes pokemons(
      Iterable<Fragment$PokemonOverviews?>? Function(
              Iterable<
                  CopyWith$Fragment$PokemonOverviews<
                      Fragment$PokemonOverviews>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetPokemons<TRes>
    implements CopyWith$Query$GetPokemons<TRes> {
  _CopyWithImpl$Query$GetPokemons(
    this._instance,
    this._then,
  );

  final Query$GetPokemons _instance;

  final TRes Function(Query$GetPokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPokemons(
        pokemons: pokemons == _undefined
            ? _instance.pokemons
            : (pokemons as List<Fragment$PokemonOverviews?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemons(
          Iterable<Fragment$PokemonOverviews?>? Function(
                  Iterable<
                      CopyWith$Fragment$PokemonOverviews<
                          Fragment$PokemonOverviews>?>?)
              _fn) =>
      call(
          pokemons: _fn(_instance.pokemons?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PokemonOverviews(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetPokemons<TRes>
    implements CopyWith$Query$GetPokemons<TRes> {
  _CopyWithStubImpl$Query$GetPokemons(this._res);

  TRes _res;

  call({
    List<Fragment$PokemonOverviews?>? pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemons(_fn) => _res;
}

const documentNodeQueryGetPokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPokemons'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'count')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'count')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PokemonOverviews'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPokemonOverviews,
]);
Query$GetPokemons _parserFn$Query$GetPokemons(Map<String, dynamic> data) =>
    Query$GetPokemons.fromJson(data);
typedef OnQueryComplete$Query$GetPokemons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPokemons?,
);

class Options$Query$GetPokemons
    extends graphql.QueryOptions<Query$GetPokemons> {
  Options$Query$GetPokemons({
    String? operationName,
    required Variables$Query$GetPokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPokemons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPokemons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetPokemons(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPokemons,
          parserFn: _parserFn$Query$GetPokemons,
        );

  final OnQueryComplete$Query$GetPokemons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPokemons
    extends graphql.WatchQueryOptions<Query$GetPokemons> {
  WatchOptions$Query$GetPokemons({
    String? operationName,
    required Variables$Query$GetPokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPokemons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetPokemons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPokemons,
        );
}

class FetchMoreOptions$Query$GetPokemons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPokemons({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPokemons variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPokemons,
        );
}

extension ClientExtension$Query$GetPokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPokemons>> query$GetPokemons(
          Options$Query$GetPokemons options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetPokemons> watchQuery$GetPokemons(
          WatchOptions$Query$GetPokemons options) =>
      this.watchQuery(options);
  void writeQuery$GetPokemons({
    required Query$GetPokemons data,
    required Variables$Query$GetPokemons variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetPokemons),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPokemons? readQuery$GetPokemons({
    required Variables$Query$GetPokemons variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetPokemons),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPokemons> useQuery$GetPokemons(
        Options$Query$GetPokemons options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetPokemons> useWatchQuery$GetPokemons(
        WatchOptions$Query$GetPokemons options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetPokemons$Widget
    extends graphql_flutter.Query<Query$GetPokemons> {
  Query$GetPokemons$Widget({
    widgets.Key? key,
    required Options$Query$GetPokemons options,
    required graphql_flutter.QueryBuilder<Query$GetPokemons> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetPokemon {
  factory Variables$Query$GetPokemon({required String id}) =>
      Variables$Query$GetPokemon._({
        r'id': id,
      });

  Variables$Query$GetPokemon._(this._$data);

  factory Variables$Query$GetPokemon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetPokemon._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetPokemon<Variables$Query$GetPokemon>
      get copyWith => CopyWith$Variables$Query$GetPokemon(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPokemon) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetPokemon<TRes> {
  factory CopyWith$Variables$Query$GetPokemon(
    Variables$Query$GetPokemon instance,
    TRes Function(Variables$Query$GetPokemon) then,
  ) = _CopyWithImpl$Variables$Query$GetPokemon;

  factory CopyWith$Variables$Query$GetPokemon.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPokemon;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetPokemon<TRes>
    implements CopyWith$Variables$Query$GetPokemon<TRes> {
  _CopyWithImpl$Variables$Query$GetPokemon(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPokemon _instance;

  final TRes Function(Variables$Query$GetPokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetPokemon._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPokemon<TRes>
    implements CopyWith$Variables$Query$GetPokemon<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPokemon(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetPokemon {
  Query$GetPokemon({
    this.pokemon,
    this.$__typename = 'Query',
  });

  factory Query$GetPokemon.fromJson(Map<String, dynamic> json) {
    final l$pokemon = json['pokemon'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemon(
      pokemon: l$pokemon == null
          ? null
          : Fragment$PokemonDetails.fromJson(
              (l$pokemon as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PokemonDetails? pokemon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon = pokemon;
    _resultData['pokemon'] = l$pokemon?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon = pokemon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPokemon) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon = pokemon;
    final lOther$pokemon = other.pokemon;
    if (l$pokemon != lOther$pokemon) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemon on Query$GetPokemon {
  CopyWith$Query$GetPokemon<Query$GetPokemon> get copyWith =>
      CopyWith$Query$GetPokemon(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPokemon<TRes> {
  factory CopyWith$Query$GetPokemon(
    Query$GetPokemon instance,
    TRes Function(Query$GetPokemon) then,
  ) = _CopyWithImpl$Query$GetPokemon;

  factory CopyWith$Query$GetPokemon.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemon;

  TRes call({
    Fragment$PokemonDetails? pokemon,
    String? $__typename,
  });
  CopyWith$Fragment$PokemonDetails<TRes> get pokemon;
}

class _CopyWithImpl$Query$GetPokemon<TRes>
    implements CopyWith$Query$GetPokemon<TRes> {
  _CopyWithImpl$Query$GetPokemon(
    this._instance,
    this._then,
  );

  final Query$GetPokemon _instance;

  final TRes Function(Query$GetPokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPokemon(
        pokemon: pokemon == _undefined
            ? _instance.pokemon
            : (pokemon as Fragment$PokemonDetails?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PokemonDetails<TRes> get pokemon {
    final local$pokemon = _instance.pokemon;
    return local$pokemon == null
        ? CopyWith$Fragment$PokemonDetails.stub(_then(_instance))
        : CopyWith$Fragment$PokemonDetails(
            local$pokemon, (e) => call(pokemon: e));
  }
}

class _CopyWithStubImpl$Query$GetPokemon<TRes>
    implements CopyWith$Query$GetPokemon<TRes> {
  _CopyWithStubImpl$Query$GetPokemon(this._res);

  TRes _res;

  call({
    Fragment$PokemonDetails? pokemon,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PokemonDetails<TRes> get pokemon =>
      CopyWith$Fragment$PokemonDetails.stub(_res);
}

const documentNodeQueryGetPokemon = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPokemon'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PokemonDetails'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPokemonDetails,
]);
Query$GetPokemon _parserFn$Query$GetPokemon(Map<String, dynamic> data) =>
    Query$GetPokemon.fromJson(data);
typedef OnQueryComplete$Query$GetPokemon = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPokemon?,
);

class Options$Query$GetPokemon extends graphql.QueryOptions<Query$GetPokemon> {
  Options$Query$GetPokemon({
    String? operationName,
    required Variables$Query$GetPokemon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPokemon? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPokemon? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetPokemon(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPokemon,
          parserFn: _parserFn$Query$GetPokemon,
        );

  final OnQueryComplete$Query$GetPokemon? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPokemon
    extends graphql.WatchQueryOptions<Query$GetPokemon> {
  WatchOptions$Query$GetPokemon({
    String? operationName,
    required Variables$Query$GetPokemon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPokemon? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetPokemon,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPokemon,
        );
}

class FetchMoreOptions$Query$GetPokemon extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPokemon({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPokemon variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPokemon,
        );
}

extension ClientExtension$Query$GetPokemon on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPokemon>> query$GetPokemon(
          Options$Query$GetPokemon options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetPokemon> watchQuery$GetPokemon(
          WatchOptions$Query$GetPokemon options) =>
      this.watchQuery(options);
  void writeQuery$GetPokemon({
    required Query$GetPokemon data,
    required Variables$Query$GetPokemon variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetPokemon),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPokemon? readQuery$GetPokemon({
    required Variables$Query$GetPokemon variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetPokemon),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPokemon.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPokemon> useQuery$GetPokemon(
        Options$Query$GetPokemon options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetPokemon> useWatchQuery$GetPokemon(
        WatchOptions$Query$GetPokemon options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetPokemon$Widget extends graphql_flutter.Query<Query$GetPokemon> {
  Query$GetPokemon$Widget({
    widgets.Key? key,
    required Options$Query$GetPokemon options,
    required graphql_flutter.QueryBuilder<Query$GetPokemon> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
