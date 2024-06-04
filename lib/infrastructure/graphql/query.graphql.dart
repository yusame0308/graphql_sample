import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$PokemonDetails {
  Fragment$PokemonDetails({
    required this.id,
    this.number,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Fragment$PokemonDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails(
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
    String? image,
    String? $__typename,
  });
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
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails<TRes>
    implements CopyWith$Fragment$PokemonDetails<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails(this._res);

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
              : Fragment$PokemonDetails.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PokemonDetails?>? pokemons;

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
    List<Fragment$PokemonDetails?>? pokemons,
    String? $__typename,
  });
  TRes pokemons(
      Iterable<Fragment$PokemonDetails?>? Function(
              Iterable<
                  CopyWith$Fragment$PokemonDetails<Fragment$PokemonDetails>?>?)
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
            : (pokemons as List<Fragment$PokemonDetails?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemons(
          Iterable<Fragment$PokemonDetails?>? Function(
                  Iterable<
                      CopyWith$Fragment$PokemonDetails<
                          Fragment$PokemonDetails>?>?)
              _fn) =>
      call(
          pokemons: _fn(_instance.pokemons?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PokemonDetails(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetPokemons<TRes>
    implements CopyWith$Query$GetPokemons<TRes> {
  _CopyWithStubImpl$Query$GetPokemons(this._res);

  TRes _res;

  call({
    List<Fragment$PokemonDetails?>? pokemons,
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
