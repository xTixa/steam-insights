// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_snapshot_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLibrarySnapshotModelCollection on Isar {
  IsarCollection<LibrarySnapshotModel> get librarySnapshotModels =>
      this.collection();
}

const LibrarySnapshotModelSchema = CollectionSchema(
  name: r'LibrarySnapshotModel',
  id: -2225239909949072546,
  properties: {
    r'ownerSteamId64': PropertySchema(
      id: 0,
      name: r'ownerSteamId64',
      type: IsarType.string,
    ),
    r'snapshotDate': PropertySchema(
      id: 1,
      name: r'snapshotDate',
      type: IsarType.dateTime,
    ),
    r'totalGames': PropertySchema(
      id: 2,
      name: r'totalGames',
      type: IsarType.long,
    ),
    r'totalPlaytimeMinutes': PropertySchema(
      id: 3,
      name: r'totalPlaytimeMinutes',
      type: IsarType.long,
    )
  },
  estimateSize: _librarySnapshotModelEstimateSize,
  serialize: _librarySnapshotModelSerialize,
  deserialize: _librarySnapshotModelDeserialize,
  deserializeProp: _librarySnapshotModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'ownerSteamId64_snapshotDate': IndexSchema(
      id: 2100860973414888254,
      name: r'ownerSteamId64_snapshotDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ownerSteamId64',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'snapshotDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _librarySnapshotModelGetId,
  getLinks: _librarySnapshotModelGetLinks,
  attach: _librarySnapshotModelAttach,
  version: '3.1.0+1',
);

int _librarySnapshotModelEstimateSize(
  LibrarySnapshotModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ownerSteamId64.length * 3;
  return bytesCount;
}

void _librarySnapshotModelSerialize(
  LibrarySnapshotModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.ownerSteamId64);
  writer.writeDateTime(offsets[1], object.snapshotDate);
  writer.writeLong(offsets[2], object.totalGames);
  writer.writeLong(offsets[3], object.totalPlaytimeMinutes);
}

LibrarySnapshotModel _librarySnapshotModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LibrarySnapshotModel();
  object.id = id;
  object.ownerSteamId64 = reader.readString(offsets[0]);
  object.snapshotDate = reader.readDateTime(offsets[1]);
  object.totalGames = reader.readLong(offsets[2]);
  object.totalPlaytimeMinutes = reader.readLong(offsets[3]);
  return object;
}

P _librarySnapshotModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _librarySnapshotModelGetId(LibrarySnapshotModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _librarySnapshotModelGetLinks(
    LibrarySnapshotModel object) {
  return [];
}

void _librarySnapshotModelAttach(
    IsarCollection<dynamic> col, Id id, LibrarySnapshotModel object) {
  object.id = id;
}

extension LibrarySnapshotModelQueryWhereSort
    on QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QWhere> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LibrarySnapshotModelQueryWhere
    on QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QWhereClause> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64EqualToAnySnapshotDate(String ownerSteamId64) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_snapshotDate',
        value: [ownerSteamId64],
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64NotEqualToAnySnapshotDate(String ownerSteamId64) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [],
              upper: [ownerSteamId64],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [],
              upper: [ownerSteamId64],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64SnapshotDateEqualTo(
          String ownerSteamId64, DateTime snapshotDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_snapshotDate',
        value: [ownerSteamId64, snapshotDate],
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64EqualToSnapshotDateNotEqualTo(
          String ownerSteamId64, DateTime snapshotDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64],
              upper: [ownerSteamId64, snapshotDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64, snapshotDate],
              includeLower: false,
              upper: [ownerSteamId64],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64, snapshotDate],
              includeLower: false,
              upper: [ownerSteamId64],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerSteamId64_snapshotDate',
              lower: [ownerSteamId64],
              upper: [ownerSteamId64, snapshotDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64EqualToSnapshotDateGreaterThan(
    String ownerSteamId64,
    DateTime snapshotDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_snapshotDate',
        lower: [ownerSteamId64, snapshotDate],
        includeLower: include,
        upper: [ownerSteamId64],
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64EqualToSnapshotDateLessThan(
    String ownerSteamId64,
    DateTime snapshotDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_snapshotDate',
        lower: [ownerSteamId64],
        upper: [ownerSteamId64, snapshotDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterWhereClause>
      ownerSteamId64EqualToSnapshotDateBetween(
    String ownerSteamId64,
    DateTime lowerSnapshotDate,
    DateTime upperSnapshotDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerSteamId64_snapshotDate',
        lower: [ownerSteamId64, lowerSnapshotDate],
        includeLower: includeLower,
        upper: [ownerSteamId64, upperSnapshotDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LibrarySnapshotModelQueryFilter on QueryBuilder<LibrarySnapshotModel,
    LibrarySnapshotModel, QFilterCondition> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64EqualTo(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64GreaterThan(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64LessThan(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64Between(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64StartsWith(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64EndsWith(
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

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
          QAfterFilterCondition>
      ownerSteamId64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
          QAfterFilterCondition>
      ownerSteamId64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerSteamId64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> ownerSteamId64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> snapshotDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snapshotDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> snapshotDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snapshotDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> snapshotDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snapshotDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> snapshotDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snapshotDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalGamesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalGames',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalGamesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalGames',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalGamesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalGames',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalGamesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalGames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalPlaytimeMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPlaytimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalPlaytimeMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPlaytimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalPlaytimeMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPlaytimeMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel,
      QAfterFilterCondition> totalPlaytimeMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPlaytimeMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LibrarySnapshotModelQueryObject on QueryBuilder<LibrarySnapshotModel,
    LibrarySnapshotModel, QFilterCondition> {}

extension LibrarySnapshotModelQueryLinks on QueryBuilder<LibrarySnapshotModel,
    LibrarySnapshotModel, QFilterCondition> {}

extension LibrarySnapshotModelQuerySortBy
    on QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QSortBy> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortBySnapshotDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotDate', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortBySnapshotDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotDate', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByTotalGames() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGames', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByTotalGamesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGames', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByTotalPlaytimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlaytimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      sortByTotalPlaytimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlaytimeMinutes', Sort.desc);
    });
  }
}

extension LibrarySnapshotModelQuerySortThenBy
    on QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QSortThenBy> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenBySnapshotDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotDate', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenBySnapshotDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotDate', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByTotalGames() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGames', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByTotalGamesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGames', Sort.desc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByTotalPlaytimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlaytimeMinutes', Sort.asc);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QAfterSortBy>
      thenByTotalPlaytimeMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlaytimeMinutes', Sort.desc);
    });
  }
}

extension LibrarySnapshotModelQueryWhereDistinct
    on QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QDistinct> {
  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QDistinct>
      distinctByOwnerSteamId64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerSteamId64',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QDistinct>
      distinctBySnapshotDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'snapshotDate');
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QDistinct>
      distinctByTotalGames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGames');
    });
  }

  QueryBuilder<LibrarySnapshotModel, LibrarySnapshotModel, QDistinct>
      distinctByTotalPlaytimeMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPlaytimeMinutes');
    });
  }
}

extension LibrarySnapshotModelQueryProperty on QueryBuilder<
    LibrarySnapshotModel, LibrarySnapshotModel, QQueryProperty> {
  QueryBuilder<LibrarySnapshotModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LibrarySnapshotModel, String, QQueryOperations>
      ownerSteamId64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerSteamId64');
    });
  }

  QueryBuilder<LibrarySnapshotModel, DateTime, QQueryOperations>
      snapshotDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'snapshotDate');
    });
  }

  QueryBuilder<LibrarySnapshotModel, int, QQueryOperations>
      totalGamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGames');
    });
  }

  QueryBuilder<LibrarySnapshotModel, int, QQueryOperations>
      totalPlaytimeMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPlaytimeMinutes');
    });
  }
}
