/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the User type in your schema. */
@immutable
class User extends Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _name;
  final String? _address;
  final String? _longitude;
  final String? _lattitude;
  final String? _mobileNumber;
  final String? _email;
  final List<Rating>? _ratings;
  final List<Order>? _orders;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get address {
    try {
      return _address!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get longitude {
    try {
      return _longitude!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get lattitude {
    try {
      return _lattitude!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get mobileNumber {
    try {
      return _mobileNumber!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<Rating>? get ratings {
    return _ratings;
  }
  
  List<Order>? get orders {
    return _orders;
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const User._internal({required this.id, required name, required address, required longitude, required lattitude, required mobileNumber, required email, ratings, orders, required updatedAt}): _name = name, _address = address, _longitude = longitude, _lattitude = lattitude, _mobileNumber = mobileNumber, _email = email, _ratings = ratings, _orders = orders, _updatedAt = updatedAt;
  
  factory User({String? id, required String name, required String address, required String longitude, required String lattitude, required String mobileNumber, required String email, List<Rating>? ratings, List<Order>? orders, required TemporalDateTime updatedAt}) {
    return User._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      address: address,
      longitude: longitude,
      lattitude: lattitude,
      mobileNumber: mobileNumber,
      email: email,
      ratings: ratings != null ? List<Rating>.unmodifiable(ratings) : ratings,
      orders: orders != null ? List<Order>.unmodifiable(orders) : orders,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _name == other._name &&
      _address == other._address &&
      _longitude == other._longitude &&
      _lattitude == other._lattitude &&
      _mobileNumber == other._mobileNumber &&
      _email == other._email &&
      DeepCollectionEquality().equals(_ratings, other._ratings) &&
      DeepCollectionEquality().equals(_orders, other._orders) &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("longitude=" + "$_longitude" + ", ");
    buffer.write("lattitude=" + "$_lattitude" + ", ");
    buffer.write("mobileNumber=" + "$_mobileNumber" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? id, String? name, String? address, String? longitude, String? lattitude, String? mobileNumber, String? email, List<Rating>? ratings, List<Order>? orders, TemporalDateTime? updatedAt}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      longitude: longitude ?? this.longitude,
      lattitude: lattitude ?? this.lattitude,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      email: email ?? this.email,
      ratings: ratings ?? this.ratings,
      orders: orders ?? this.orders,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _address = json['address'],
      _longitude = json['longitude'],
      _lattitude = json['lattitude'],
      _mobileNumber = json['mobileNumber'],
      _email = json['email'],
      _ratings = json['ratings'] is List
        ? (json['ratings'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Rating.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _orders = json['orders'] is List
        ? (json['orders'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Order.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'address': _address, 'longitude': _longitude, 'lattitude': _lattitude, 'mobileNumber': _mobileNumber, 'email': _email, 'ratings': _ratings?.map((Rating? e) => e?.toJson()).toList(), 'orders': _orders?.map((Order? e) => e?.toJson()).toList(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "user.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ADDRESS = QueryField(fieldName: "address");
  static final QueryField LONGITUDE = QueryField(fieldName: "longitude");
  static final QueryField LATTITUDE = QueryField(fieldName: "lattitude");
  static final QueryField MOBILENUMBER = QueryField(fieldName: "mobileNumber");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField RATINGS = QueryField(
    fieldName: "ratings",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Rating).toString()));
  static final QueryField ORDERS = QueryField(
    fieldName: "orders",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE,
          ModelOperation.DELETE,
          ModelOperation.UPDATE
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.ADDRESS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.LONGITUDE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.LATTITUDE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.MOBILENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: User.RATINGS,
      isRequired: false,
      ofModelName: (Rating).toString(),
      associatedKey: Rating.USERRATINGID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: User.ORDERS,
      isRequired: false,
      ofModelName: (Order).toString(),
      associatedKey: Order.USERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: User.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserModelType extends ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
}