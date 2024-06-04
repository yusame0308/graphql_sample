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
    this.weight,
    this.height,
    this.classification,
    this.types,
    this.resistant,
    this.attacks,
    this.$__typename = 'Pokemon',
  });

  factory Fragment$PokemonDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$height = json['height'];
    final l$classification = json['classification'];
    final l$types = json['types'];
    final l$resistant = json['resistant'];
    final l$attacks = json['attacks'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      weight: l$weight == null
          ? null
          : Fragment$PokemonDetails$weight.fromJson(
              (l$weight as Map<String, dynamic>)),
      height: l$height == null
          ? null
          : Fragment$PokemonDetails$height.fromJson(
              (l$height as Map<String, dynamic>)),
      classification: (l$classification as String?),
      types: (l$types as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      resistant:
          (l$resistant as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      attacks: l$attacks == null
          ? null
          : Fragment$PokemonDetails$attacks.fromJson(
              (l$attacks as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final Fragment$PokemonDetails$weight? weight;

  final Fragment$PokemonDetails$height? height;

  final String? classification;

  final List<String?>? types;

  final List<String?>? resistant;

  final Fragment$PokemonDetails$attacks? attacks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$weight = weight;
    _resultData['weight'] = l$weight?.toJson();
    final l$height = height;
    _resultData['height'] = l$height?.toJson();
    final l$classification = classification;
    _resultData['classification'] = l$classification;
    final l$types = types;
    _resultData['types'] = l$types?.map((e) => e).toList();
    final l$resistant = resistant;
    _resultData['resistant'] = l$resistant?.map((e) => e).toList();
    final l$attacks = attacks;
    _resultData['attacks'] = l$attacks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$weight = weight;
    final l$height = height;
    final l$classification = classification;
    final l$types = types;
    final l$resistant = resistant;
    final l$attacks = attacks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$weight,
      l$height,
      l$classification,
      l$types == null ? null : Object.hashAll(l$types.map((v) => v)),
      l$resistant == null ? null : Object.hashAll(l$resistant.map((v) => v)),
      l$attacks,
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
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    final l$resistant = resistant;
    final lOther$resistant = other.resistant;
    if (l$resistant != null && lOther$resistant != null) {
      if (l$resistant.length != lOther$resistant.length) {
        return false;
      }
      for (int i = 0; i < l$resistant.length; i++) {
        final l$resistant$entry = l$resistant[i];
        final lOther$resistant$entry = lOther$resistant[i];
        if (l$resistant$entry != lOther$resistant$entry) {
          return false;
        }
      }
    } else if (l$resistant != lOther$resistant) {
      return false;
    }
    final l$attacks = attacks;
    final lOther$attacks = other.attacks;
    if (l$attacks != lOther$attacks) {
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
    Fragment$PokemonDetails$weight? weight,
    Fragment$PokemonDetails$height? height,
    String? classification,
    List<String?>? types,
    List<String?>? resistant,
    Fragment$PokemonDetails$attacks? attacks,
    String? $__typename,
  });
  CopyWith$Fragment$PokemonDetails$weight<TRes> get weight;
  CopyWith$Fragment$PokemonDetails$height<TRes> get height;
  CopyWith$Fragment$PokemonDetails$attacks<TRes> get attacks;
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
    Object? weight = _undefined,
    Object? height = _undefined,
    Object? classification = _undefined,
    Object? types = _undefined,
    Object? resistant = _undefined,
    Object? attacks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        weight: weight == _undefined
            ? _instance.weight
            : (weight as Fragment$PokemonDetails$weight?),
        height: height == _undefined
            ? _instance.height
            : (height as Fragment$PokemonDetails$height?),
        classification: classification == _undefined
            ? _instance.classification
            : (classification as String?),
        types:
            types == _undefined ? _instance.types : (types as List<String?>?),
        resistant: resistant == _undefined
            ? _instance.resistant
            : (resistant as List<String?>?),
        attacks: attacks == _undefined
            ? _instance.attacks
            : (attacks as Fragment$PokemonDetails$attacks?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PokemonDetails$weight<TRes> get weight {
    final local$weight = _instance.weight;
    return local$weight == null
        ? CopyWith$Fragment$PokemonDetails$weight.stub(_then(_instance))
        : CopyWith$Fragment$PokemonDetails$weight(
            local$weight, (e) => call(weight: e));
  }

  CopyWith$Fragment$PokemonDetails$height<TRes> get height {
    final local$height = _instance.height;
    return local$height == null
        ? CopyWith$Fragment$PokemonDetails$height.stub(_then(_instance))
        : CopyWith$Fragment$PokemonDetails$height(
            local$height, (e) => call(height: e));
  }

  CopyWith$Fragment$PokemonDetails$attacks<TRes> get attacks {
    final local$attacks = _instance.attacks;
    return local$attacks == null
        ? CopyWith$Fragment$PokemonDetails$attacks.stub(_then(_instance))
        : CopyWith$Fragment$PokemonDetails$attacks(
            local$attacks, (e) => call(attacks: e));
  }
}

class _CopyWithStubImpl$Fragment$PokemonDetails<TRes>
    implements CopyWith$Fragment$PokemonDetails<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    Fragment$PokemonDetails$weight? weight,
    Fragment$PokemonDetails$height? height,
    String? classification,
    List<String?>? types,
    List<String?>? resistant,
    Fragment$PokemonDetails$attacks? attacks,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PokemonDetails$weight<TRes> get weight =>
      CopyWith$Fragment$PokemonDetails$weight.stub(_res);

  CopyWith$Fragment$PokemonDetails$height<TRes> get height =>
      CopyWith$Fragment$PokemonDetails$height.stub(_res);

  CopyWith$Fragment$PokemonDetails$attacks<TRes> get attacks =>
      CopyWith$Fragment$PokemonDetails$attacks.stub(_res);
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
      name: NameNode(value: 'weight'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'minimum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'maximum'),
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
      name: NameNode(value: 'height'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'minimum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'maximum'),
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
      name: NameNode(value: 'classification'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'types'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'resistant'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'attacks'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'fast'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'damage'),
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
          name: NameNode(value: 'special'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'damage'),
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

class Fragment$PokemonDetails$weight {
  Fragment$PokemonDetails$weight({
    this.minimum,
    this.maximum,
    this.$__typename = 'PokemonDimension',
  });

  factory Fragment$PokemonDetails$weight.fromJson(Map<String, dynamic> json) {
    final l$minimum = json['minimum'];
    final l$maximum = json['maximum'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$weight(
      minimum: (l$minimum as String?),
      maximum: (l$maximum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? minimum;

  final String? maximum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$minimum = minimum;
    _resultData['minimum'] = l$minimum;
    final l$maximum = maximum;
    _resultData['maximum'] = l$maximum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$minimum = minimum;
    final l$maximum = maximum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$minimum,
      l$maximum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$weight) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$minimum = minimum;
    final lOther$minimum = other.minimum;
    if (l$minimum != lOther$minimum) {
      return false;
    }
    final l$maximum = maximum;
    final lOther$maximum = other.maximum;
    if (l$maximum != lOther$maximum) {
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

extension UtilityExtension$Fragment$PokemonDetails$weight
    on Fragment$PokemonDetails$weight {
  CopyWith$Fragment$PokemonDetails$weight<Fragment$PokemonDetails$weight>
      get copyWith => CopyWith$Fragment$PokemonDetails$weight(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$weight<TRes> {
  factory CopyWith$Fragment$PokemonDetails$weight(
    Fragment$PokemonDetails$weight instance,
    TRes Function(Fragment$PokemonDetails$weight) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$weight;

  factory CopyWith$Fragment$PokemonDetails$weight.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$weight;

  TRes call({
    String? minimum,
    String? maximum,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonDetails$weight<TRes>
    implements CopyWith$Fragment$PokemonDetails$weight<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$weight(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$weight _instance;

  final TRes Function(Fragment$PokemonDetails$weight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? minimum = _undefined,
    Object? maximum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$weight(
        minimum:
            minimum == _undefined ? _instance.minimum : (minimum as String?),
        maximum:
            maximum == _undefined ? _instance.maximum : (maximum as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails$weight<TRes>
    implements CopyWith$Fragment$PokemonDetails$weight<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$weight(this._res);

  TRes _res;

  call({
    String? minimum,
    String? maximum,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PokemonDetails$height {
  Fragment$PokemonDetails$height({
    this.minimum,
    this.maximum,
    this.$__typename = 'PokemonDimension',
  });

  factory Fragment$PokemonDetails$height.fromJson(Map<String, dynamic> json) {
    final l$minimum = json['minimum'];
    final l$maximum = json['maximum'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$height(
      minimum: (l$minimum as String?),
      maximum: (l$maximum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? minimum;

  final String? maximum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$minimum = minimum;
    _resultData['minimum'] = l$minimum;
    final l$maximum = maximum;
    _resultData['maximum'] = l$maximum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$minimum = minimum;
    final l$maximum = maximum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$minimum,
      l$maximum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$height) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$minimum = minimum;
    final lOther$minimum = other.minimum;
    if (l$minimum != lOther$minimum) {
      return false;
    }
    final l$maximum = maximum;
    final lOther$maximum = other.maximum;
    if (l$maximum != lOther$maximum) {
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

extension UtilityExtension$Fragment$PokemonDetails$height
    on Fragment$PokemonDetails$height {
  CopyWith$Fragment$PokemonDetails$height<Fragment$PokemonDetails$height>
      get copyWith => CopyWith$Fragment$PokemonDetails$height(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$height<TRes> {
  factory CopyWith$Fragment$PokemonDetails$height(
    Fragment$PokemonDetails$height instance,
    TRes Function(Fragment$PokemonDetails$height) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$height;

  factory CopyWith$Fragment$PokemonDetails$height.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$height;

  TRes call({
    String? minimum,
    String? maximum,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonDetails$height<TRes>
    implements CopyWith$Fragment$PokemonDetails$height<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$height(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$height _instance;

  final TRes Function(Fragment$PokemonDetails$height) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? minimum = _undefined,
    Object? maximum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$height(
        minimum:
            minimum == _undefined ? _instance.minimum : (minimum as String?),
        maximum:
            maximum == _undefined ? _instance.maximum : (maximum as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails$height<TRes>
    implements CopyWith$Fragment$PokemonDetails$height<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$height(this._res);

  TRes _res;

  call({
    String? minimum,
    String? maximum,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PokemonDetails$attacks {
  Fragment$PokemonDetails$attacks({
    this.fast,
    this.special,
    this.$__typename = 'PokemonAttack',
  });

  factory Fragment$PokemonDetails$attacks.fromJson(Map<String, dynamic> json) {
    final l$fast = json['fast'];
    final l$special = json['special'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$attacks(
      fast: (l$fast as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PokemonDetails$attacks$fast.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      special: (l$special as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PokemonDetails$attacks$special.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PokemonDetails$attacks$fast?>? fast;

  final List<Fragment$PokemonDetails$attacks$special?>? special;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fast = fast;
    _resultData['fast'] = l$fast?.map((e) => e?.toJson()).toList();
    final l$special = special;
    _resultData['special'] = l$special?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fast = fast;
    final l$special = special;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fast == null ? null : Object.hashAll(l$fast.map((v) => v)),
      l$special == null ? null : Object.hashAll(l$special.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$attacks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fast = fast;
    final lOther$fast = other.fast;
    if (l$fast != null && lOther$fast != null) {
      if (l$fast.length != lOther$fast.length) {
        return false;
      }
      for (int i = 0; i < l$fast.length; i++) {
        final l$fast$entry = l$fast[i];
        final lOther$fast$entry = lOther$fast[i];
        if (l$fast$entry != lOther$fast$entry) {
          return false;
        }
      }
    } else if (l$fast != lOther$fast) {
      return false;
    }
    final l$special = special;
    final lOther$special = other.special;
    if (l$special != null && lOther$special != null) {
      if (l$special.length != lOther$special.length) {
        return false;
      }
      for (int i = 0; i < l$special.length; i++) {
        final l$special$entry = l$special[i];
        final lOther$special$entry = lOther$special[i];
        if (l$special$entry != lOther$special$entry) {
          return false;
        }
      }
    } else if (l$special != lOther$special) {
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

extension UtilityExtension$Fragment$PokemonDetails$attacks
    on Fragment$PokemonDetails$attacks {
  CopyWith$Fragment$PokemonDetails$attacks<Fragment$PokemonDetails$attacks>
      get copyWith => CopyWith$Fragment$PokemonDetails$attacks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$attacks<TRes> {
  factory CopyWith$Fragment$PokemonDetails$attacks(
    Fragment$PokemonDetails$attacks instance,
    TRes Function(Fragment$PokemonDetails$attacks) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$attacks;

  factory CopyWith$Fragment$PokemonDetails$attacks.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$attacks;

  TRes call({
    List<Fragment$PokemonDetails$attacks$fast?>? fast,
    List<Fragment$PokemonDetails$attacks$special?>? special,
    String? $__typename,
  });
  TRes fast(
      Iterable<Fragment$PokemonDetails$attacks$fast?>? Function(
              Iterable<
                  CopyWith$Fragment$PokemonDetails$attacks$fast<
                      Fragment$PokemonDetails$attacks$fast>?>?)
          _fn);
  TRes special(
      Iterable<Fragment$PokemonDetails$attacks$special?>? Function(
              Iterable<
                  CopyWith$Fragment$PokemonDetails$attacks$special<
                      Fragment$PokemonDetails$attacks$special>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$PokemonDetails$attacks<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$attacks(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$attacks _instance;

  final TRes Function(Fragment$PokemonDetails$attacks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fast = _undefined,
    Object? special = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$attacks(
        fast: fast == _undefined
            ? _instance.fast
            : (fast as List<Fragment$PokemonDetails$attacks$fast?>?),
        special: special == _undefined
            ? _instance.special
            : (special as List<Fragment$PokemonDetails$attacks$special?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fast(
          Iterable<Fragment$PokemonDetails$attacks$fast?>? Function(
                  Iterable<
                      CopyWith$Fragment$PokemonDetails$attacks$fast<
                          Fragment$PokemonDetails$attacks$fast>?>?)
              _fn) =>
      call(
          fast: _fn(_instance.fast?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PokemonDetails$attacks$fast(
                  e,
                  (i) => i,
                )))?.toList());

  TRes special(
          Iterable<Fragment$PokemonDetails$attacks$special?>? Function(
                  Iterable<
                      CopyWith$Fragment$PokemonDetails$attacks$special<
                          Fragment$PokemonDetails$attacks$special>?>?)
              _fn) =>
      call(
          special: _fn(_instance.special?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PokemonDetails$attacks$special(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$PokemonDetails$attacks<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$attacks(this._res);

  TRes _res;

  call({
    List<Fragment$PokemonDetails$attacks$fast?>? fast,
    List<Fragment$PokemonDetails$attacks$special?>? special,
    String? $__typename,
  }) =>
      _res;

  fast(_fn) => _res;

  special(_fn) => _res;
}

class Fragment$PokemonDetails$attacks$fast {
  Fragment$PokemonDetails$attacks$fast({
    this.name,
    this.type,
    this.damage,
    this.$__typename = 'Attack',
  });

  factory Fragment$PokemonDetails$attacks$fast.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$damage = json['damage'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$attacks$fast(
      name: (l$name as String?),
      type: (l$type as String?),
      damage: (l$damage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? type;

  final int? damage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$damage = damage;
    _resultData['damage'] = l$damage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$damage = damage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$damage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$attacks$fast) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$damage = damage;
    final lOther$damage = other.damage;
    if (l$damage != lOther$damage) {
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

extension UtilityExtension$Fragment$PokemonDetails$attacks$fast
    on Fragment$PokemonDetails$attacks$fast {
  CopyWith$Fragment$PokemonDetails$attacks$fast<
          Fragment$PokemonDetails$attacks$fast>
      get copyWith => CopyWith$Fragment$PokemonDetails$attacks$fast(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$attacks$fast<TRes> {
  factory CopyWith$Fragment$PokemonDetails$attacks$fast(
    Fragment$PokemonDetails$attacks$fast instance,
    TRes Function(Fragment$PokemonDetails$attacks$fast) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$attacks$fast;

  factory CopyWith$Fragment$PokemonDetails$attacks$fast.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$attacks$fast;

  TRes call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonDetails$attacks$fast<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks$fast<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$attacks$fast(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$attacks$fast _instance;

  final TRes Function(Fragment$PokemonDetails$attacks$fast) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? damage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$attacks$fast(
        name: name == _undefined ? _instance.name : (name as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        damage: damage == _undefined ? _instance.damage : (damage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails$attacks$fast<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks$fast<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$attacks$fast(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PokemonDetails$attacks$special {
  Fragment$PokemonDetails$attacks$special({
    this.name,
    this.type,
    this.damage,
    this.$__typename = 'Attack',
  });

  factory Fragment$PokemonDetails$attacks$special.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$damage = json['damage'];
    final l$$__typename = json['__typename'];
    return Fragment$PokemonDetails$attacks$special(
      name: (l$name as String?),
      type: (l$type as String?),
      damage: (l$damage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? type;

  final int? damage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$damage = damage;
    _resultData['damage'] = l$damage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$damage = damage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$damage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PokemonDetails$attacks$special) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$damage = damage;
    final lOther$damage = other.damage;
    if (l$damage != lOther$damage) {
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

extension UtilityExtension$Fragment$PokemonDetails$attacks$special
    on Fragment$PokemonDetails$attacks$special {
  CopyWith$Fragment$PokemonDetails$attacks$special<
          Fragment$PokemonDetails$attacks$special>
      get copyWith => CopyWith$Fragment$PokemonDetails$attacks$special(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PokemonDetails$attacks$special<TRes> {
  factory CopyWith$Fragment$PokemonDetails$attacks$special(
    Fragment$PokemonDetails$attacks$special instance,
    TRes Function(Fragment$PokemonDetails$attacks$special) then,
  ) = _CopyWithImpl$Fragment$PokemonDetails$attacks$special;

  factory CopyWith$Fragment$PokemonDetails$attacks$special.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PokemonDetails$attacks$special;

  TRes call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PokemonDetails$attacks$special<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks$special<TRes> {
  _CopyWithImpl$Fragment$PokemonDetails$attacks$special(
    this._instance,
    this._then,
  );

  final Fragment$PokemonDetails$attacks$special _instance;

  final TRes Function(Fragment$PokemonDetails$attacks$special) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? damage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PokemonDetails$attacks$special(
        name: name == _undefined ? _instance.name : (name as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        damage: damage == _undefined ? _instance.damage : (damage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PokemonDetails$attacks$special<TRes>
    implements CopyWith$Fragment$PokemonDetails$attacks$special<TRes> {
  _CopyWithStubImpl$Fragment$PokemonDetails$attacks$special(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    int? damage,
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

class Query$GetFivePokemons {
  Query$GetFivePokemons({
    this.pokemons,
    this.$__typename = 'Query',
  });

  factory Query$GetFivePokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemons = json['pokemons'];
    final l$$__typename = json['__typename'];
    return Query$GetFivePokemons(
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
    if (!(other is Query$GetFivePokemons) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetFivePokemons on Query$GetFivePokemons {
  CopyWith$Query$GetFivePokemons<Query$GetFivePokemons> get copyWith =>
      CopyWith$Query$GetFivePokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFivePokemons<TRes> {
  factory CopyWith$Query$GetFivePokemons(
    Query$GetFivePokemons instance,
    TRes Function(Query$GetFivePokemons) then,
  ) = _CopyWithImpl$Query$GetFivePokemons;

  factory CopyWith$Query$GetFivePokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFivePokemons;

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

class _CopyWithImpl$Query$GetFivePokemons<TRes>
    implements CopyWith$Query$GetFivePokemons<TRes> {
  _CopyWithImpl$Query$GetFivePokemons(
    this._instance,
    this._then,
  );

  final Query$GetFivePokemons _instance;

  final TRes Function(Query$GetFivePokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFivePokemons(
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

class _CopyWithStubImpl$Query$GetFivePokemons<TRes>
    implements CopyWith$Query$GetFivePokemons<TRes> {
  _CopyWithStubImpl$Query$GetFivePokemons(this._res);

  TRes _res;

  call({
    List<Fragment$PokemonDetails?>? pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemons(_fn) => _res;
}

const documentNodeQueryGetFivePokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFivePokemons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '5'),
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
Query$GetFivePokemons _parserFn$Query$GetFivePokemons(
        Map<String, dynamic> data) =>
    Query$GetFivePokemons.fromJson(data);
typedef OnQueryComplete$Query$GetFivePokemons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetFivePokemons?,
);

class Options$Query$GetFivePokemons
    extends graphql.QueryOptions<Query$GetFivePokemons> {
  Options$Query$GetFivePokemons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFivePokemons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetFivePokemons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$GetFivePokemons(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetFivePokemons,
          parserFn: _parserFn$Query$GetFivePokemons,
        );

  final OnQueryComplete$Query$GetFivePokemons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetFivePokemons
    extends graphql.WatchQueryOptions<Query$GetFivePokemons> {
  WatchOptions$Query$GetFivePokemons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFivePokemons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetFivePokemons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetFivePokemons,
        );
}

class FetchMoreOptions$Query$GetFivePokemons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetFivePokemons(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetFivePokemons,
        );
}

extension ClientExtension$Query$GetFivePokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetFivePokemons>> query$GetFivePokemons(
          [Options$Query$GetFivePokemons? options]) async =>
      await this.query(options ?? Options$Query$GetFivePokemons());
  graphql.ObservableQuery<Query$GetFivePokemons> watchQuery$GetFivePokemons(
          [WatchOptions$Query$GetFivePokemons? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetFivePokemons());
  void writeQuery$GetFivePokemons({
    required Query$GetFivePokemons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetFivePokemons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetFivePokemons? readQuery$GetFivePokemons({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetFivePokemons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetFivePokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetFivePokemons> useQuery$GetFivePokemons(
        [Options$Query$GetFivePokemons? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetFivePokemons());
graphql.ObservableQuery<Query$GetFivePokemons> useWatchQuery$GetFivePokemons(
        [WatchOptions$Query$GetFivePokemons? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetFivePokemons());

class Query$GetFivePokemons$Widget
    extends graphql_flutter.Query<Query$GetFivePokemons> {
  Query$GetFivePokemons$Widget({
    widgets.Key? key,
    Options$Query$GetFivePokemons? options,
    required graphql_flutter.QueryBuilder<Query$GetFivePokemons> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetFivePokemons(),
          builder: builder,
        );
}
