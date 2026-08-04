// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_item_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWishlistItemModelCollection on Isar {
  IsarCollection<WishlistItemModel> get wishlistItemModels => this.collection();
}

const WishlistItemModelSchema = CollectionSchema(
  name: r'WishlistItemModel',
  id: 3528882918452038666,
  properties: {
    r'appId': PropertySchema(
      id: 0,
      name: r'appId',
      type: IsarType.long,
    ),
    r'currency': PropertySchema(
      id: 1,
      name: r'currency',
      type: IsarType.string,
    ),
    r'currentPriceCents': PropertySchema(
      id: 2,
      name: r'currentPriceCents',
      type: IsarType.double,
    ),
    r'dateAdded': PropertySchema(
      id: 3,
      name: r'dateAdded',
      type: IsarType.dateTime,
    ),
    r'iconUrl': PropertySchema(
      id: 4,
      name: r'iconUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'ownerSteamId64': PropertySchema(
      id: 6,
      name: r'ownerSteamId64',
      type: IsarType.string,
    ),
    r'priceHistory': PropertySchema(
      id: 7,
      name: r'priceHistory',
      type: IsarType.objectList,
      target: r'PriceHistoryPoint',
    ),
    r'priority': PropertySchema(
      id: 8,
      name: r'priority',
      type: IsarType.long,
    )
  },
  estimateSize: _wishlistItemModelEstimateSize,
  serialize: _wishlistItemModelSerialize,
  deserialize: _wishlistItemModelDeserialize,
  deserializeProp: _wishlistItemModelDeserializeProp,
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
  embeddedSchemas: {r'PriceHistoryPoint': PriceHistoryPointSchema},
  getId: _wishlistItemModelGetId,
  getLinks: _wishlistItemModelGetLinks,
  attach: _wishlistItemModelAttach,
  version: '3.1.0+1',
);

int _wishlistItemModelEstimateSize(
  WishlistItemModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.currency;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.iconUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.ownerSteamId64.length * 3;
  {
    final list = object.priceHistory;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[PriceHistoryPoint]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              PriceHistoryPointSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _wishlistItemModelSerialize(
  WishlistItemModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.appId);
  writer.writeString(offsets[1], object.currency);
  writer.writeDouble(offsets[2], object.currentPriceCents);
  writer.writeDateTime(offsets[3], object.dateAdded);
  writer.writeString(offsets[4], object.iconUrl);
  writer.writeString(offsets[5], object.name);
  writer.writeString(offsets[6], object.ownerSteamId64);
  writer.writeObjectList<PriceHistoryPoint>(
    offsets[7],
    allOffsets,
    PriceHistoryPointSchema.serialize,
    object.priceHistory,
  );
  writer.writeLong(offsets[8], object.priority);
}

WishlistItemModel _wishlistItemModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WishlistItemModel();
  object.appId = reader.readLong(offsets[0]);
  object.currency = reader.readStringOrNull(offsets[1]);
  object.currentPriceCents = reader.readDoubleOrNull(offsets[2]);
  object.dateAdded = reader.readDateTime(offsets[3]);
  object.iconUrl = reader.readString(offsets[4]);
  object.id = id;
  object.name = reader.readString(offsets[5]);
  object.ownerSteamId64 = reader.readString(offsets[6]);
  object.priceHistory = reader.readObjectList<PriceHistoryPoint>(
    offsets[7],
    PriceHistoryPointSchema.deserialize,
    allOffsets,
    PriceHistoryPoint(),
  );
  object.priority = reader.readLong(offsets[8]);
  return object;
}

P _wishlistItemModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readObjectList<PriceHistoryPoint>(
        offset,
        PriceHistoryPointSchema.deserialize,
        allOffsets,
        PriceHistoryPoint(),
      )) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wishlistItemModelGetId(WishlistItemModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _wishlistItemModelGetLinks(
    WishlistItemModel object) {
  return [];
}

void _wishlistItemModelAttach(
    IsarCollection<dynamic> col, Id id, WishlistItemModel object) {
  object.id = id;
}

extension WishlistItemModelQueryWhereSort
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QWhere> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WishlistItemModelQueryWhere
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QWhereClause> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
      ownerSteamId64EqualToAnyAppId(String ownerSteamId64) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_appId',
        value: [ownerSteamId64],
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
      ownerSteamId64AppIdEqualTo(String ownerSteamId64, int appId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerSteamId64_appId',
        value: [ownerSteamId64, appId],
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterWhereClause>
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

extension WishlistItemModelQueryFilter
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QFilterCondition> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      appIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appId',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currency',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currency',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentPriceCents',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentPriceCents',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentPriceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentPriceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentPriceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      currentPriceCentsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentPriceCents',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      dateAddedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      dateAddedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      dateAddedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      dateAddedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateAdded',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      iconUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      iconUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
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

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      ownerSteamId64Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerSteamId64',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      ownerSteamId64Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerSteamId64',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      ownerSteamId64IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      ownerSteamId64IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerSteamId64',
        value: '',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceHistory',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceHistory',
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'priceHistory',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priorityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priorityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priorityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priorityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priority',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WishlistItemModelQueryObject
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QFilterCondition> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterFilterCondition>
      priceHistoryElement(FilterQuery<PriceHistoryPoint> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'priceHistory');
    });
  }
}

extension WishlistItemModelQueryLinks
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QFilterCondition> {}

extension WishlistItemModelQuerySortBy
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QSortBy> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByCurrentPriceCents() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPriceCents', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByCurrentPriceCentsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPriceCents', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }
}

extension WishlistItemModelQuerySortThenBy
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QSortThenBy> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByAppIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appId', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByCurrentPriceCents() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPriceCents', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByCurrentPriceCentsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentPriceCents', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByOwnerSteamId64() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByOwnerSteamId64Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerSteamId64', Sort.desc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QAfterSortBy>
      thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }
}

extension WishlistItemModelQueryWhereDistinct
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct> {
  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByAppId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appId');
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByCurrency({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currency', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByCurrentPriceCents() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentPriceCents');
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateAdded');
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByIconUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByOwnerSteamId64({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerSteamId64',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WishlistItemModel, WishlistItemModel, QDistinct>
      distinctByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority');
    });
  }
}

extension WishlistItemModelQueryProperty
    on QueryBuilder<WishlistItemModel, WishlistItemModel, QQueryProperty> {
  QueryBuilder<WishlistItemModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WishlistItemModel, int, QQueryOperations> appIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appId');
    });
  }

  QueryBuilder<WishlistItemModel, String?, QQueryOperations>
      currencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currency');
    });
  }

  QueryBuilder<WishlistItemModel, double?, QQueryOperations>
      currentPriceCentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentPriceCents');
    });
  }

  QueryBuilder<WishlistItemModel, DateTime, QQueryOperations>
      dateAddedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateAdded');
    });
  }

  QueryBuilder<WishlistItemModel, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<WishlistItemModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<WishlistItemModel, String, QQueryOperations>
      ownerSteamId64Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerSteamId64');
    });
  }

  QueryBuilder<WishlistItemModel, List<PriceHistoryPoint>?, QQueryOperations>
      priceHistoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceHistory');
    });
  }

  QueryBuilder<WishlistItemModel, int, QQueryOperations> priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PriceHistoryPointSchema = Schema(
  name: r'PriceHistoryPoint',
  id: -1852546825870470081,
  properties: {
    r'currency': PropertySchema(
      id: 0,
      name: r'currency',
      type: IsarType.string,
    ),
    r'priceCents': PropertySchema(
      id: 1,
      name: r'priceCents',
      type: IsarType.double,
    ),
    r'recordedAt': PropertySchema(
      id: 2,
      name: r'recordedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _priceHistoryPointEstimateSize,
  serialize: _priceHistoryPointSerialize,
  deserialize: _priceHistoryPointDeserialize,
  deserializeProp: _priceHistoryPointDeserializeProp,
);

int _priceHistoryPointEstimateSize(
  PriceHistoryPoint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.currency;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _priceHistoryPointSerialize(
  PriceHistoryPoint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.currency);
  writer.writeDouble(offsets[1], object.priceCents);
  writer.writeDateTime(offsets[2], object.recordedAt);
}

PriceHistoryPoint _priceHistoryPointDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PriceHistoryPoint();
  object.currency = reader.readStringOrNull(offsets[0]);
  object.priceCents = reader.readDoubleOrNull(offsets[1]);
  object.recordedAt = reader.readDateTimeOrNull(offsets[2]);
  return object;
}

P _priceHistoryPointDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PriceHistoryPointQueryFilter
    on QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QFilterCondition> {
  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currency',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currency',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      currencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceCents',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceCents',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceCents',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      priceCentsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceCents',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recordedAt',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recordedAt',
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recordedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recordedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recordedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QAfterFilterCondition>
      recordedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recordedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PriceHistoryPointQueryObject
    on QueryBuilder<PriceHistoryPoint, PriceHistoryPoint, QFilterCondition> {}
