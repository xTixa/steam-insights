// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steam_profile_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSteamProfileModelCollection on Isar {
  IsarCollection<SteamProfileModel> get steamProfileModels => this.collection();
}

const SteamProfileModelSchema = CollectionSchema(
  name: r'SteamProfileModel',
  id: 2877941799354735010,
  properties: {
    r'addedAt': PropertySchema(
      id: 0,
      name: r'addedAt',
      type: IsarType.dateTime,
    ),
    r'avatarUrl': PropertySchema(
      id: 1,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'isFavorite': PropertySchema(
      id: 2,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'lastSyncedAt': PropertySchema(
      id: 3,
      name: r'lastSyncedAt',
      type: IsarType.dateTime,
    ),
    r'personaName': PropertySchema(
      id: 4,
      name: r'personaName',
      type: IsarType.string,
    ),
    r'steamId64': PropertySchema(
      id: 5,
      name: r'steamId64',
      type: IsarType.string,
    ),
    r'vanityUrl': PropertySchema(
      id: 6,
      name: r'vanityUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _steamProfileModelEstimateSize,
  serialize: _steamProfileModelSerialize,
  deserialize: _steamProfileModelDeserialize,
  deserializeProp: _steamProfileModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'steamId64': IndexSchema(
      id: -7223295452739477095,
      name: r'steamId64',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'steamId64',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _steamProfileModelGetId,
  getLinks: _steamProfileModelGetLinks,
  attach: _steamProfileModelAttach,
  version: '3.1.0+1',
);

int _steamProfileModelEstimateSize(
  SteamProfileModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatarUrl.length * 3;
  bytesCount += 3 + object.personaName.length * 3;
  bytesCount += 3 + object.steamId64.length * 3;
  {
    final value = object.vanityUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _steamProfileModelSerialize(
  SteamProfileModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.addedAt);
  writer.writeString(offsets[1], object.avatarUrl);
  writer.writeBool(offsets[2], object.isFavorite);
  writer.writeDateTime(offsets[3], object.lastSyncedAt);
  writer.writeString(offsets[4], object.personaName);
  writer.writeString(offsets[5], object.steamId64);
  writer.writeString(offsets[6], object.vanityUrl);
}

SteamProfileModel _steamProfileModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SteamProfileModel();
  object.addedAt = reader.readDateTime(offsets[0]);
  object.avatarUrl = reader.readString(offsets[1]);
  object.id = id;
  object.isFavorite = reader.readBool(offsets[2]);
  object.lastSyncedAt = reader.readDateTimeOrNull(offsets[3]);
  object.personaName = reader.readString(offsets[4]);
  object.steamId64 = reader.readString(offsets[5]);
  object.vanityUrl = reader.readStringOrNull(offsets[6]);
  return object;
}

P _steamProfileModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _steamProfileModelGetId(SteamProfileModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _steamProfileModelGetLinks(
    SteamProfileModel object) {
  return [];
}

void _steamProfileModelAttach(
    IsarCollection<dynamic> col, Id id, SteamProfileModel object) {
  object.id = id;
}

extension SteamProfileModelByIndex on IsarCollection<SteamProfileModel> {
  Future<SteamProfileModel?> getBySteamId64(String steamId64) {
    return getByIndex(r'steamId64', [steamId64]);
  }

  SteamProfileModel? getBySteamId64Sync(String steamId64) {
    return getByIndexSync(r'steamId64', [steamId64]);
  }

  Future<bool> deleteBySteamId64(String steamId64) {
    return deleteByIndex(r'steamId64', [steamId64]);
  }

  bool deleteBySteamId64Sync(String steamId64) {
    return deleteByIndexSync(r'steamId64', [steamId64]);
  }

  Future<List<SteamProfileModel?>> getAllBySteamId64(
      List<String> steamId64Values) {
    final values = steamId64Values.map((e) => [e]).toList();
    return getAllByIndex(r'steamId64', values);
  }

  List<SteamProfileModel?> getAllBySteamId64Sync(List<String> steamId64Values) {
    final values = steamId64Values.map((e) => [e]).toList();
    return getAllByIndexSync(r'steamId64', values);
  }

  Future<int> deleteAllBySteamId64(List<String> steamId64Values) {
    final values = steamId64Values.map((e) => [e]).toList();
    return deleteAllByIndex(r'steamId64', values);
  }

  int deleteAllBySteamId64Sync(List<String> steamId64Values) {
    final values = steamId64Values.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'steamId64', values);
  }

  Future<Id> putBySteamId64(SteamProfileModel object) {
    return putByIndex(r'steamId64', object);
  }

  Id putBySteamId64Sync(SteamProfileModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'steamId64', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySteamId64(List<SteamProfileModel> objects) {
    return putAllByIndex(r'steamId64', objects);
  }

  List<Id> putAllBySteamId64Sync(List<SteamProfileModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'steamId64', objects, saveLinks: saveLinks);
  }
}

extension SteamProfileModelQueryWhereSort
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QWhere> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SteamProfileModelQueryWhere
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QWhereClause> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      steamId64EqualTo(String steamId64) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'steamId64',
        value: [steamId64],
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterWhereClause>
      steamId64NotEqualTo(String steamId64) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'steamId64',
              lower: [],
              upper: [steamId64],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'steamId64',
              lower: [steamId64],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'steamId64',
              lower: [steamId64],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'steamId64',
              lower: [],
              upper: [steamId64],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SteamProfileModelQueryFilter
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QFilterCondition> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      addedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      addedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      addedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      addedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      isFavoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastSyncedAt',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastSyncedAt',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSyncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSyncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSyncedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      lastSyncedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSyncedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'personaName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'personaName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'personaName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personaName',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      personaNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'personaName',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'steamId64',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'steamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'steamId64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'steamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      steamId64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'steamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vanityUrl',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vanityUrl',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vanityUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vanityUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vanityUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vanityUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterFilterCondition>
      vanityUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vanityUrl',
        value: '',
      ));
    });
  }
}

extension SteamProfileModelQueryObject
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QFilterCondition> {}

extension SteamProfileModelQueryLinks
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QFilterCondition> {}

extension SteamProfileModelQuerySortBy
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QSortBy> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByLastSyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByPersonaName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personaName', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByPersonaNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personaName', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortBySteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'steamId64', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortBySteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'steamId64', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByVanityUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vanityUrl', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      sortByVanityUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vanityUrl', Sort.desc);
    });
  }
}

extension SteamProfileModelQuerySortThenBy
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QSortThenBy> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByLastSyncedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSyncedAt', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByPersonaName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personaName', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByPersonaNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personaName', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenBySteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'steamId64', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenBySteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'steamId64', Sort.desc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByVanityUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vanityUrl', Sort.asc);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QAfterSortBy>
      thenByVanityUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vanityUrl', Sort.desc);
    });
  }
}

extension SteamProfileModelQueryWhereDistinct
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct> {
  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedAt');
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByLastSyncedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSyncedAt');
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByPersonaName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personaName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctBySteamId64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'steamId64', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SteamProfileModel, SteamProfileModel, QDistinct>
      distinctByVanityUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vanityUrl', caseSensitive: caseSensitive);
    });
  }
}

extension SteamProfileModelQueryProperty
    on QueryBuilder<SteamProfileModel, SteamProfileModel, QQueryProperty> {
  QueryBuilder<SteamProfileModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SteamProfileModel, DateTime, QQueryOperations>
      addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedAt');
    });
  }

  QueryBuilder<SteamProfileModel, String, QQueryOperations>
      avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<SteamProfileModel, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<SteamProfileModel, DateTime?, QQueryOperations>
      lastSyncedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSyncedAt');
    });
  }

  QueryBuilder<SteamProfileModel, String, QQueryOperations>
      personaNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personaName');
    });
  }

  QueryBuilder<SteamProfileModel, String, QQueryOperations>
      steamId64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'steamId64');
    });
  }

  QueryBuilder<SteamProfileModel, String?, QQueryOperations>
      vanityUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vanityUrl');
    });
  }
}
