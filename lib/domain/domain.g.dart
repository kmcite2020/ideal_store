// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDomainCollection on Isar {
  IsarCollection<Domain> get domains => this.collection();
}

const DomainSchema = CollectionSchema(
  name: r'Domain',
  id: -6135609459731946152,
  properties: {
    r'configuration': PropertySchema(
      id: 0,
      name: r'configuration',
      type: IsarType.object,
      target: r'Configuration',
    )
  },
  estimateSize: _domainEstimateSize,
  serialize: _domainSerialize,
  deserialize: _domainDeserialize,
  deserializeProp: _domainDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Configuration': ConfigurationSchema},
  getId: _domainGetId,
  getLinks: _domainGetLinks,
  attach: _domainAttach,
  version: '3.1.0+1',
);

int _domainEstimateSize(
  Domain object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      ConfigurationSchema.estimateSize(
          object.configuration, allOffsets[Configuration]!, allOffsets);
  return bytesCount;
}

void _domainSerialize(
  Domain object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Configuration>(
    offsets[0],
    allOffsets,
    ConfigurationSchema.serialize,
    object.configuration,
  );
}

Domain _domainDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Domain();
  object.configuration = reader.readObjectOrNull<Configuration>(
        offsets[0],
        ConfigurationSchema.deserialize,
        allOffsets,
      ) ??
      Configuration();
  object.id = id;
  return object;
}

P _domainDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Configuration>(
            offset,
            ConfigurationSchema.deserialize,
            allOffsets,
          ) ??
          Configuration()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _domainGetId(Domain object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _domainGetLinks(Domain object) {
  return [];
}

void _domainAttach(IsarCollection<dynamic> col, Id id, Domain object) {
  object.id = id;
}

extension DomainQueryWhereSort on QueryBuilder<Domain, Domain, QWhere> {
  QueryBuilder<Domain, Domain, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DomainQueryWhere on QueryBuilder<Domain, Domain, QWhereClause> {
  QueryBuilder<Domain, Domain, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Domain, Domain, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idBetween(
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
}

extension DomainQueryFilter on QueryBuilder<Domain, Domain, QFilterCondition> {
  QueryBuilder<Domain, Domain, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idBetween(
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
}

extension DomainQueryObject on QueryBuilder<Domain, Domain, QFilterCondition> {
  QueryBuilder<Domain, Domain, QAfterFilterCondition> configuration(
      FilterQuery<Configuration> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'configuration');
    });
  }
}

extension DomainQueryLinks on QueryBuilder<Domain, Domain, QFilterCondition> {}

extension DomainQuerySortBy on QueryBuilder<Domain, Domain, QSortBy> {}

extension DomainQuerySortThenBy on QueryBuilder<Domain, Domain, QSortThenBy> {
  QueryBuilder<Domain, Domain, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Domain, Domain, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DomainQueryWhereDistinct on QueryBuilder<Domain, Domain, QDistinct> {}

extension DomainQueryProperty on QueryBuilder<Domain, Domain, QQueryProperty> {
  QueryBuilder<Domain, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Domain, Configuration, QQueryOperations>
      configurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'configuration');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCustomerCollection on Isar {
  IsarCollection<Customer> get customers => this.collection();
}

const CustomerSchema = CollectionSchema(
  name: r'Customer',
  id: -7623823084711604343,
  properties: {
    r'city': PropertySchema(
      id: 0,
      name: r'city',
      type: IsarType.string,
    ),
    r'editing': PropertySchema(
      id: 1,
      name: r'editing',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _customerEstimateSize,
  serialize: _customerSerialize,
  deserialize: _customerDeserialize,
  deserializeProp: _customerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'products': LinkSchema(
      id: 2780271004151711931,
      name: r'products',
      target: r'Product',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _customerGetId,
  getLinks: _customerGetLinks,
  attach: _customerAttach,
  version: '3.1.0+1',
);

int _customerEstimateSize(
  Customer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.city.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _customerSerialize(
  Customer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.city);
  writer.writeBool(offsets[1], object.editing);
  writer.writeString(offsets[2], object.name);
}

Customer _customerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Customer();
  object.city = reader.readString(offsets[0]);
  object.editing = reader.readBool(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  return object;
}

P _customerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _customerGetId(Customer object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _customerGetLinks(Customer object) {
  return [object.products];
}

void _customerAttach(IsarCollection<dynamic> col, Id id, Customer object) {
  object.id = id;
  object.products.attach(col, col.isar.collection<Product>(), r'products', id);
}

extension CustomerQueryWhereSort on QueryBuilder<Customer, Customer, QWhere> {
  QueryBuilder<Customer, Customer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CustomerQueryWhere on QueryBuilder<Customer, Customer, QWhereClause> {
  QueryBuilder<Customer, Customer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Customer, Customer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idBetween(
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
}

extension CustomerQueryFilter
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> editingEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'editing',
        value: value,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension CustomerQueryObject
    on QueryBuilder<Customer, Customer, QFilterCondition> {}

extension CustomerQueryLinks
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition> products(
      FilterQuery<Product> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'products');
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> productsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', length, true, length, true);
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> productsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, true, 0, true);
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> productsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, false, 999999, true);
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      productsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, true, length, include);
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      productsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', length, include, 999999, true);
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> productsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'products', lower, includeLower, upper, includeUpper);
    });
  }
}

extension CustomerQuerySortBy on QueryBuilder<Customer, Customer, QSortBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CustomerQuerySortThenBy
    on QueryBuilder<Customer, Customer, QSortThenBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CustomerQueryWhereDistinct
    on QueryBuilder<Customer, Customer, QDistinct> {
  QueryBuilder<Customer, Customer, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'editing');
    });
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CustomerQueryProperty
    on QueryBuilder<Customer, Customer, QQueryProperty> {
  QueryBuilder<Customer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Customer, String, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<Customer, bool, QQueryOperations> editingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'editing');
    });
  }

  QueryBuilder<Customer, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrderCollection on Isar {
  IsarCollection<Order> get orders => this.collection();
}

const OrderSchema = CollectionSchema(
  name: r'Order',
  id: 103494837486634173,
  properties: {
    r'createdOn': PropertySchema(
      id: 0,
      name: r'createdOn',
      type: IsarType.dateTime,
    ),
    r'isEditing': PropertySchema(
      id: 1,
      name: r'isEditing',
      type: IsarType.bool,
    ),
    r'orderStatus': PropertySchema(
      id: 2,
      name: r'orderStatus',
      type: IsarType.byte,
      enumMap: _OrderorderStatusEnumValueMap,
    )
  },
  estimateSize: _orderEstimateSize,
  serialize: _orderSerialize,
  deserialize: _orderDeserialize,
  deserializeProp: _orderDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'customer': LinkSchema(
      id: -1348173668180349888,
      name: r'customer',
      target: r'Customer',
      single: true,
    ),
    r'products': LinkSchema(
      id: 5018216796101259809,
      name: r'products',
      target: r'Product',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _orderGetId,
  getLinks: _orderGetLinks,
  attach: _orderAttach,
  version: '3.1.0+1',
);

int _orderEstimateSize(
  Order object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _orderSerialize(
  Order object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdOn);
  writer.writeBool(offsets[1], object.isEditing);
  writer.writeByte(offsets[2], object.orderStatus.index);
}

Order _orderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Order();
  object.createdOn = reader.readDateTime(offsets[0]);
  object.id = id;
  object.isEditing = reader.readBool(offsets[1]);
  object.orderStatus =
      _OrderorderStatusValueEnumMap[reader.readByteOrNull(offsets[2])] ??
          OrderStatus.ordered;
  return object;
}

P _orderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (_OrderorderStatusValueEnumMap[reader.readByteOrNull(offset)] ??
          OrderStatus.ordered) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _OrderorderStatusEnumValueMap = {
  'ordered': 0,
  'delivering': 1,
  'complete': 2,
};
const _OrderorderStatusValueEnumMap = {
  0: OrderStatus.ordered,
  1: OrderStatus.delivering,
  2: OrderStatus.complete,
};

Id _orderGetId(Order object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _orderGetLinks(Order object) {
  return [object.customer, object.products];
}

void _orderAttach(IsarCollection<dynamic> col, Id id, Order object) {
  object.id = id;
  object.customer.attach(col, col.isar.collection<Customer>(), r'customer', id);
  object.products.attach(col, col.isar.collection<Product>(), r'products', id);
}

extension OrderQueryWhereSort on QueryBuilder<Order, Order, QWhere> {
  QueryBuilder<Order, Order, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OrderQueryWhere on QueryBuilder<Order, Order, QWhereClause> {
  QueryBuilder<Order, Order, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Order, Order, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idBetween(
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
}

extension OrderQueryFilter on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> createdOnEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdOnGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdOnLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdOnBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> isEditingEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isEditing',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderStatusEqualTo(
      OrderStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderStatusGreaterThan(
    OrderStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderStatusLessThan(
    OrderStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderStatus',
        value: value,
      ));
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderStatusBetween(
    OrderStatus lower,
    OrderStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OrderQueryObject on QueryBuilder<Order, Order, QFilterCondition> {}

extension OrderQueryLinks on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> customer(
      FilterQuery<Customer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'customer');
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'customer', 0, true, 0, true);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> products(
      FilterQuery<Product> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'products');
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', length, true, length, true);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, true, 0, true);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, false, 999999, true);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', 0, true, length, include);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'products', length, include, 999999, true);
    });
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> productsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'products', lower, includeLower, upper, includeUpper);
    });
  }
}

extension OrderQuerySortBy on QueryBuilder<Order, Order, QSortBy> {
  QueryBuilder<Order, Order, QAfterSortBy> sortByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByIsEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEditing', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByIsEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEditing', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderStatus', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderStatus', Sort.desc);
    });
  }
}

extension OrderQuerySortThenBy on QueryBuilder<Order, Order, QSortThenBy> {
  QueryBuilder<Order, Order, QAfterSortBy> thenByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIsEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEditing', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIsEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEditing', Sort.desc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderStatus', Sort.asc);
    });
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderStatus', Sort.desc);
    });
  }
}

extension OrderQueryWhereDistinct on QueryBuilder<Order, Order, QDistinct> {
  QueryBuilder<Order, Order, QDistinct> distinctByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdOn');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByIsEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isEditing');
    });
  }

  QueryBuilder<Order, Order, QDistinct> distinctByOrderStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderStatus');
    });
  }
}

extension OrderQueryProperty on QueryBuilder<Order, Order, QQueryProperty> {
  QueryBuilder<Order, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Order, DateTime, QQueryOperations> createdOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdOn');
    });
  }

  QueryBuilder<Order, bool, QQueryOperations> isEditingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isEditing');
    });
  }

  QueryBuilder<Order, OrderStatus, QQueryOperations> orderStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderStatus');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductCollection on Isar {
  IsarCollection<Product> get products => this.collection();
}

const ProductSchema = CollectionSchema(
  name: r'Product',
  id: -6222113721139403729,
  properties: {
    r'brand': PropertySchema(
      id: 0,
      name: r'brand',
      type: IsarType.byte,
      enumMap: _ProductbrandEnumValueMap,
    ),
    r'colorIndex': PropertySchema(
      id: 1,
      name: r'colorIndex',
      type: IsarType.long,
    ),
    r'editing': PropertySchema(
      id: 2,
      name: r'editing',
      type: IsarType.bool,
    ),
    r'image': PropertySchema(
      id: 3,
      name: r'image',
      type: IsarType.string,
    ),
    r'model': PropertySchema(
      id: 4,
      name: r'model',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 6,
      name: r'price',
      type: IsarType.long,
    ),
    r'stock': PropertySchema(
      id: 7,
      name: r'stock',
      type: IsarType.long,
    )
  },
  estimateSize: _productEstimateSize,
  serialize: _productSerialize,
  deserialize: _productDeserialize,
  deserializeProp: _productDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productGetId,
  getLinks: _productGetLinks,
  attach: _productAttach,
  version: '3.1.0+1',
);

int _productEstimateSize(
  Product object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.model.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productSerialize(
  Product object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.brand.index);
  writer.writeLong(offsets[1], object.colorIndex);
  writer.writeBool(offsets[2], object.editing);
  writer.writeString(offsets[3], object.image);
  writer.writeString(offsets[4], object.model);
  writer.writeString(offsets[5], object.name);
  writer.writeLong(offsets[6], object.price);
  writer.writeLong(offsets[7], object.stock);
}

Product _productDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Product();
  object.brand = _ProductbrandValueEnumMap[reader.readByteOrNull(offsets[0])] ??
      Brand.urideal;
  object.colorIndex = reader.readLong(offsets[1]);
  object.editing = reader.readBool(offsets[2]);
  object.id = id;
  object.image = reader.readString(offsets[3]);
  object.model = reader.readString(offsets[4]);
  object.name = reader.readString(offsets[5]);
  object.price = reader.readLong(offsets[6]);
  object.stock = reader.readLong(offsets[7]);
  return object;
}

P _productDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_ProductbrandValueEnumMap[reader.readByteOrNull(offset)] ??
          Brand.urideal) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ProductbrandEnumValueMap = {
  'urideal': 0,
  'chinese': 1,
  'pakistani': 2,
};
const _ProductbrandValueEnumMap = {
  0: Brand.urideal,
  1: Brand.chinese,
  2: Brand.pakistani,
};

Id _productGetId(Product object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productGetLinks(Product object) {
  return [];
}

void _productAttach(IsarCollection<dynamic> col, Id id, Product object) {
  object.id = id;
}

extension ProductQueryWhereSort on QueryBuilder<Product, Product, QWhere> {
  QueryBuilder<Product, Product, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductQueryWhere on QueryBuilder<Product, Product, QWhereClause> {
  QueryBuilder<Product, Product, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Product, Product, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idBetween(
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
}

extension ProductQueryFilter
    on QueryBuilder<Product, Product, QFilterCondition> {
  QueryBuilder<Product, Product, QAfterFilterCondition> brandEqualTo(
      Brand value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> brandGreaterThan(
    Brand value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> brandLessThan(
    Brand value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> brandBetween(
    Brand lower,
    Brand upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> colorIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> colorIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> colorIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> colorIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> editingEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'editing',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'model',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'model',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> modelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> priceEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> priceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> priceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> priceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> stockGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> stockLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> stockBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProductQueryObject
    on QueryBuilder<Product, Product, QFilterCondition> {}

extension ProductQueryLinks
    on QueryBuilder<Product, Product, QFilterCondition> {}

extension ProductQuerySortBy on QueryBuilder<Product, Product, QSortBy> {
  QueryBuilder<Product, Product, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }
}

extension ProductQuerySortThenBy
    on QueryBuilder<Product, Product, QSortThenBy> {
  QueryBuilder<Product, Product, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByColorIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIndex', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByEditingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editing', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }
}

extension ProductQueryWhereDistinct
    on QueryBuilder<Product, Product, QDistinct> {
  QueryBuilder<Product, Product, QDistinct> distinctByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByColorIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorIndex');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByEditing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'editing');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'model', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }
}

extension ProductQueryProperty
    on QueryBuilder<Product, Product, QQueryProperty> {
  QueryBuilder<Product, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Product, Brand, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> colorIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorIndex');
    });
  }

  QueryBuilder<Product, bool, QQueryOperations> editingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'editing');
    });
  }

  QueryBuilder<Product, String, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Product, String, QQueryOperations> modelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'model');
    });
  }

  QueryBuilder<Product, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ConfigurationSchema = Schema(
  name: r'Configuration',
  id: -1441735911786269971,
  properties: {
    r'borderRadius': PropertySchema(
      id: 0,
      name: r'borderRadius',
      type: IsarType.double,
    ),
    r'colorIndex': PropertySchema(
      id: 1,
      name: r'colorIndex',
      type: IsarType.long,
    ),
    r'font': PropertySchema(
      id: 2,
      name: r'font',
      type: IsarType.string,
    ),
    r'isAddCustomerVisible': PropertySchema(
      id: 3,
      name: r'isAddCustomerVisible',
      type: IsarType.bool,
    ),
    r'isColorsExtended': PropertySchema(
      id: 4,
      name: r'isColorsExtended',
      type: IsarType.bool,
    ),
    r'isFontsExtended': PropertySchema(
      id: 5,
      name: r'isFontsExtended',
      type: IsarType.bool,
    ),
    r'isThemeModesExtended': PropertySchema(
      id: 6,
      name: r'isThemeModesExtended',
      type: IsarType.bool,
    ),
    r'padding': PropertySchema(
      id: 7,
      name: r'padding',
      type: IsarType.double,
    ),
    r'price': PropertySchema(
      id: 8,
      name: r'price',
      type: IsarType.double,
    ),
    r'themeMode': PropertySchema(
      id: 9,
      name: r'themeMode',
      type: IsarType.byte,
      enumMap: _ConfigurationthemeModeEnumValueMap,
    )
  },
  estimateSize: _configurationEstimateSize,
  serialize: _configurationSerialize,
  deserialize: _configurationDeserialize,
  deserializeProp: _configurationDeserializeProp,
);

int _configurationEstimateSize(
  Configuration object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.font.length * 3;
  return bytesCount;
}

void _configurationSerialize(
  Configuration object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.borderRadius);
  writer.writeLong(offsets[1], object.colorIndex);
  writer.writeString(offsets[2], object.font);
  writer.writeBool(offsets[3], object.isAddCustomerVisible);
  writer.writeBool(offsets[4], object.isColorsExtended);
  writer.writeBool(offsets[5], object.isFontsExtended);
  writer.writeBool(offsets[6], object.isThemeModesExtended);
  writer.writeDouble(offsets[7], object.padding);
  writer.writeDouble(offsets[8], object.price);
  writer.writeByte(offsets[9], object.themeMode.index);
}

Configuration _configurationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Configuration();
  object.borderRadius = reader.readDouble(offsets[0]);
  object.colorIndex = reader.readLong(offsets[1]);
  object.font = reader.readString(offsets[2]);
  object.isAddCustomerVisible = reader.readBool(offsets[3]);
  object.isColorsExtended = reader.readBool(offsets[4]);
  object.isFontsExtended = reader.readBool(offsets[5]);
  object.isThemeModesExtended = reader.readBool(offsets[6]);
  object.padding = reader.readDouble(offsets[7]);
  object.price = reader.readDouble(offsets[8]);
  object.themeMode =
      _ConfigurationthemeModeValueEnumMap[reader.readByteOrNull(offsets[9])] ??
          ThemeMode.system;
  return object;
}

P _configurationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (_ConfigurationthemeModeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ThemeMode.system) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ConfigurationthemeModeEnumValueMap = {
  'system': 0,
  'light': 1,
  'dark': 2,
};
const _ConfigurationthemeModeValueEnumMap = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

extension ConfigurationQueryFilter
    on QueryBuilder<Configuration, Configuration, QFilterCondition> {
  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      borderRadiusEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'borderRadius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      borderRadiusGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'borderRadius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      borderRadiusLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'borderRadius',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      borderRadiusBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'borderRadius',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      colorIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      colorIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      colorIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      colorIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> fontEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> fontBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'font',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'font',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition> fontMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'font',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'font',
        value: '',
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      fontIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'font',
        value: '',
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isAddCustomerVisibleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAddCustomerVisible',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isColorsExtendedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isColorsExtended',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isFontsExtendedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFontsExtended',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      isThemeModesExtendedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isThemeModesExtended',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      paddingEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'padding',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      paddingGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'padding',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      paddingLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'padding',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      paddingBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'padding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeEqualTo(ThemeMode value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeLessThan(
    ThemeMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<Configuration, Configuration, QAfterFilterCondition>
      themeModeBetween(
    ThemeMode lower,
    ThemeMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ConfigurationQueryObject
    on QueryBuilder<Configuration, Configuration, QFilterCondition> {}
