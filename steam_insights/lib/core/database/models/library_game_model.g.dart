// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_game_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLibraryGameModelCollection on Isar {
  IsarCollection<LibraryGameModel> get libraryGameModels => this.collection();
}

const LibraryGameModelSchema = CollectionSchema(
  name: r'LibraryGameModel',
  id: -4902731600704416508,
  properties: {
    r'achievementsTotal': PropertySchema(
      id: 0,
      name: r'achievementsTotal',
      type: IsarType.long,
    ),
    r'achievementsUnlocked': PropertySchema(
      id: 1,
      name: r'achievementsUnlocked',
      type: IsarType.long,
    ),
    r'appId': PropertySchema(
      id: 2,
      name: r'appId',
      type: IsarType.long,
    ),
    r'cachedAt': PropertySchema(
      id: 3,
      name: r'cachedAt',
      type: IsarType.dateTime,
    ),
    r'categories': PropertySchema(
      id: 4,
      name: r'categories',
      type: IsarType.stringList,
    ),
    r'genres': PropertySchema(
      id: 5,
      name: r'genres',
      type: IsarType.stringList,
    ),
    r'headerImageUrl': PropertySchema(
      id: 6,
      name: r'headerImageUrl',
      type: IsarType.string,
    ),
    r'iconUrl': PropertySchema(
      id: 7,
      name: r'iconUrl',
      type: IsarType.string,
    ),
    r'isFavorite': PropertySchema(
      id: 8,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'lastPlayed': PropertySchema(
      id: 9,
      name: r'lastPlayed',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 10,
      name: r'name',
      type: IsarType.string,
    ),
    r'ownerSteamId64': PropertySchema(
      id: 11,
      name: r'ownerSteamId64',
      type: IsarType.string,
    ),
    r'playtimeForeverMinutes': PropertySchema(
      id: 12,
      name: r'playtimeForeverMinutes',
      type: IsarType.long,
    ),
    r'playtimeLast2WeeksMinutes': PropertySchema(
      id: 13,
      name: r'playtimeLast2WeeksMinutes',
      type: IsarType.long,
    )
  },
  estimateSize: _libraryGameModelEstimateSize,
  serialize: _libraryGameModelSerialize,
  deserialize: _libraryGameModelDeserialize,
  deserializeProp: _libraryGameModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'ownerSteamId64_appId': IndexSchema(
      id: 4695286543103237803,
      name: r'ownerSteamId64_appId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ownerSteamId64',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'appId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _libraryGameModelGetId,
  getLinks: _libraryGameModelGetLinks,
  attach: _libraryGameModelAttach,
  version: '3.1.0+1',
);

int _libraryGameModelEstimateSize(
  LibraryGameModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categories.length * 3;
  {
    for (var i = 0; i < object.categories.length; i++) {
      final value = object.categories[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.genres.length * 3;
  {
    for (var i = 0; i < object.genres.length; i++) {
      final value = object.genres[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.headerImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.iconUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.ownerSteamId64.length * 3;
  return bytesCount;
}

void _libraryGameModelSerialize(
  LibraryGameModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.achievementsTotal);
  writer.writeLong(offsets[1], object.achievementsUnlocked);
  writer.writeLong(offsets[2], object.appId);
  writer.writeDateTime(offsets[3], object.cachedAt);
  writer.writeStringList(offsets[4], object.categories);
  writer.writeStringList(offsets[5], object.genres);
  writer.writeString(offsets[6], object.headerImageUrl);
  writer.writeString(offsets[7], object.iconUrl);
  writer.writeBool(offsets[8], object.isFavorite);
  writer.writeDateTime(offsets[9], object.lastPlayed);
  writer.writeString(offsets[10], object.name);
  writer.writeString(offsets[11], object.ownerSteamId64);
  writer.writeLong(offsets[12], object.playtimeForeverMinutes);
  writer.writeLong(offsets[13], object.playtimeLast2WeeksMinutes);
}

LibraryGameModel _libraryGameModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LibraryGameModel();
  object.achievementsTotal = reader.readLong(offsets[0]);
  object.achievementsUnlocked = reader.readLong(offsets[1]);
  object.appId = reader.readLong(offsets[2]);
  object.cachedAt = reader.readDateTime(offsets[3]);
  object.categories = reader.readStringList(offsets[4]) ?? [];
  object.genres = reader.readStringList(offsets[5]) ?? [];
  object.headerImageUrl = reader.readStringOrNull(offsets[6]);
  object.iconUrl = reader.readString(offsets[7]);
  object.id = id;
  object.isFavorite = reader.readBool(offsets[8]);
  object.lastPlayed = reader.readDateTimeOrNull(offsets[9]);
  object.name = reader.readString(offsets[10]);
  object.ownerSteamId64 = reader.readString(offsets[11]);
  object.playtimeForeverMinutes = reader.readLong(offsets[12]);
  object.playtimeLast2WeeksMinutes = reader.readLong(offsets[13]);
  return object;
}

P _libraryGameModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _libraryGameModelGetId(LibraryGameModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _libraryGameModelGetLinks(LibraryGameModel object) {
  return [];
}

void _libraryGameModelAttach(
    IsarCollection<dynamic> col, Id id, LibraryGameModel object) {
  object.id = id;
}

extension LibraryGameModelQueryWhereSort
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QWhere> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LibraryGameModelQueryWhere
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QWhereClause> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
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

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64EqualToAnyAppId(String ownerSteamId64) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_appId',
        value: [ownerSteamId64],
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64NotEqualToAnyAppId(String ownerSteamId64) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [],
              upper: [ownerSteamId64],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [],
              upper: [ownerSteamId64],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64AppIdEqualTo(String ownerSteamId64, int appId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_appId',
        value: [ownerSteamId64, appId],
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64EqualToAppIdNotEqualTo(String ownerSteamId64, int appId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64],
              upper: [ownerSteamId64, appId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64, appId],
              includeLower: false,
              upper: [ownerSteamId64],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64, appId],
              includeLower: false,
              upper: [ownerSteamId64],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_appId',
              lower: [ownerSteamId64],
              upper: [ownerSteamId64, appId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64EqualToAppIdGreaterThan(
    String ownerSteamId64,
    int appId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_appId',
        lower: [ownerSteamId64, appId],
        includeLower: include,
        upper: [ownerSteamId64],
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64EqualToAppIdLessThan(
    String ownerSteamId64,
    int appId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_appId',
        lower: [ownerSteamId64],
        upper: [ownerSteamId64, appId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterWhereClause>
      ownerSteamId64EqualToAppIdBetween(
    String ownerSteamId64,
    int lowerAppId,
    int upperAppId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_appId',
        lower: [ownerSteamId64, lowerAppId],
        includeLower: includeLower,
        upper: [ownerSteamId64, upperAppId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LibraryGameModelQueryFilter
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QFilterCondition> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsTotalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementsTotal',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsTotalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementsTotal',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsTotalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementsTotal',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsTotalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementsTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsUnlockedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementsUnlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsUnlockedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementsUnlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsUnlockedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementsUnlocked',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      achievementsUnlockedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementsUnlocked',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      appIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appId',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      appIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appId',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      appIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appId',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      appIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      cachedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      cachedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      cachedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      cachedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categories',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categories',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      categoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genres',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genres',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'headerImageUrl',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'headerImageUrl',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headerImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headerImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headerImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      headerImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headerImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
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

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
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

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
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

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      isFavoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastPlayed',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastPlayed',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      lastPlayedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastPlayed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerSteamId64',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerSteamId64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      ownerSteamId64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeForeverMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playtimeForeverMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeForeverMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playtimeForeverMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeForeverMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playtimeForeverMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeForeverMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playtimeForeverMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeLast2WeeksMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playtimeLast2WeeksMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeLast2WeeksMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playtimeLast2WeeksMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeLast2WeeksMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playtimeLast2WeeksMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterFilterCondition>
      playtimeLast2WeeksMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playtimeLast2WeeksMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LibraryGameModelQueryObject
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QFilterCondition> {}

extension LibraryGameModelQueryLinks
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QFilterCondition> {}

extension LibraryGameModelQuerySortBy
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QSortBy> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByAchievementsTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsTotal', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByAchievementsTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsTotal', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByAchievementsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsUnlocked', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByAchievementsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsUnlocked', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy> sortByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByHeaderImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerImageUrl', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByHeaderImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerImageUrl', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByLastPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPlayed', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByLastPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPlayed', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByPlaytimeForeverMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeForeverMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByPlaytimeForeverMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeForeverMinutes', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByPlaytimeLast2WeeksMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeLast2WeeksMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      sortByPlaytimeLast2WeeksMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeLast2WeeksMinutes', Sort.desc);
    });
  }
}

extension LibraryGameModelQuerySortThenBy
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QSortThenBy> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByAchievementsTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsTotal', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByAchievementsTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsTotal', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByAchievementsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsUnlocked', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByAchievementsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementsUnlocked', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy> thenByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByHeaderImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerImageUrl', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByHeaderImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerImageUrl', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByLastPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPlayed', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByLastPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPlayed', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByPlaytimeForeverMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeForeverMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByPlaytimeForeverMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeForeverMinutes', Sort.desc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByPlaytimeLast2WeeksMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeLast2WeeksMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QAfterSortBy>
      thenByPlaytimeLast2WeeksMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playtimeLast2WeeksMinutes', Sort.desc);
    });
  }
}

extension LibraryGameModelQueryWhereDistinct
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct> {
  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByAchievementsTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementsTotal');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByAchievementsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementsUnlocked');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appId');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedAt');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByCategories() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categories');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByGenres() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genres');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByHeaderImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headerImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct> distinctByIconUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByLastPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastPlayed');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByOwnerSteamId64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerSteamId64',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByPlaytimeForeverMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playtimeForeverMinutes');
    });
  }

  QueryBuilder<LibraryGameModel, LibraryGameModel, QDistinct>
      distinctByPlaytimeLast2WeeksMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playtimeLast2WeeksMinutes');
    });
  }
}

extension LibraryGameModelQueryProperty
    on QueryBuilder<LibraryGameModel, LibraryGameModel, QQueryProperty> {
  QueryBuilder<LibraryGameModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LibraryGameModel, int, QQueryOperations>
      achievementsTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementsTotal');
    });
  }

  QueryBuilder<LibraryGameModel, int, QQueryOperations>
      achievementsUnlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementsUnlocked');
    });
  }

  QueryBuilder<LibraryGameModel, int, QQueryOperations> appIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appId');
    });
  }

  QueryBuilder<LibraryGameModel, DateTime, QQueryOperations>
      cachedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedAt');
    });
  }

  QueryBuilder<LibraryGameModel, List<String>, QQueryOperations>
      categoriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categories');
    });
  }

  QueryBuilder<LibraryGameModel, List<String>, QQueryOperations>
      genresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genres');
    });
  }

  QueryBuilder<LibraryGameModel, String?, QQueryOperations>
      headerImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headerImageUrl');
    });
  }

  QueryBuilder<LibraryGameModel, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<LibraryGameModel, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<LibraryGameModel, DateTime?, QQueryOperations>
      lastPlayedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastPlayed');
    });
  }

  QueryBuilder<LibraryGameModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LibraryGameModel, String, QQueryOperations>
      ownerSteamId64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerSteamId64');
    });
  }

  QueryBuilder<LibraryGameModel, int, QQueryOperations>
      playtimeForeverMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playtimeForeverMinutes');
    });
  }

  QueryBuilder<LibraryGameModel, int, QQueryOperations>
      playtimeLast2WeeksMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playtimeLast2WeeksMinutes');
    });
  }
}
