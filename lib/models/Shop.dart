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


/** This is an auto generated class representing the Shop type in your schema. */
@immutable
class Shop extends Model {
  static const classType = const _ShopModelType();
  final String id;
  final String? _name;
  final String? _type;
  final int? _longitude;
  final int? _lattitude;
  final String? _address;
  final String? _mobileNumber;
  final String? _email;
  final int? _deliveryCharge;
  final String? _registrationId;
  final String? _nic;
  final int? _deliveryAccepted;
  final String? _profilePicture;
  final List<Gallery>? _gallery;
  final List<Rating>? _rating;
  final List<OpeningHours>? _openingHours;
  final List<ShopOrder>? _orders;
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
  
  String get type {
    try {
      return _type!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get longitude {
    try {
      return _longitude!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get lattitude {
    try {
      return _lattitude!;
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
  
  int get deliveryCharge {
    try {
      return _deliveryCharge!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get registrationId {
    return _registrationId;
  }
  
  String? get nic {
    return _nic;
  }
  
  int get deliveryAccepted {
    try {
      return _deliveryAccepted!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get profilePicture {
    return _profilePicture;
  }
  
  List<Gallery>? get gallery {
    return _gallery;
  }
  
  List<Rating>? get rating {
    return _rating;
  }
  
  List<OpeningHours>? get openingHours {
    return _openingHours;
  }
  
  List<ShopOrder>? get orders {
    return _orders;
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Shop._internal({required this.id, required name, required type, required longitude, required lattitude, required address, required mobileNumber, required email, required deliveryCharge, registrationId, nic, required deliveryAccepted, profilePicture, gallery, rating, openingHours, orders, required updatedAt}): _name = name, _type = type, _longitude = longitude, _lattitude = lattitude, _address = address, _mobileNumber = mobileNumber, _email = email, _deliveryCharge = deliveryCharge, _registrationId = registrationId, _nic = nic, _deliveryAccepted = deliveryAccepted, _profilePicture = profilePicture, _gallery = gallery, _rating = rating, _openingHours = openingHours, _orders = orders, _updatedAt = updatedAt;
  
  factory Shop({String? id, required String name, required String type, required int longitude, required int lattitude, required String address, required String mobileNumber, required String email, required int deliveryCharge, String? registrationId, String? nic, required int deliveryAccepted, String? profilePicture, List<Gallery>? gallery, List<Rating>? rating, List<OpeningHours>? openingHours, List<ShopOrder>? orders, required TemporalDateTime updatedAt}) {
    return Shop._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      type: type,
      longitude: longitude,
      lattitude: lattitude,
      address: address,
      mobileNumber: mobileNumber,
      email: email,
      deliveryCharge: deliveryCharge,
      registrationId: registrationId,
      nic: nic,
      deliveryAccepted: deliveryAccepted,
      profilePicture: profilePicture,
      gallery: gallery != null ? List<Gallery>.unmodifiable(gallery) : gallery,
      rating: rating != null ? List<Rating>.unmodifiable(rating) : rating,
      openingHours: openingHours != null ? List<OpeningHours>.unmodifiable(openingHours) : openingHours,
      orders: orders != null ? List<ShopOrder>.unmodifiable(orders) : orders,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Shop &&
      id == other.id &&
      _name == other._name &&
      _type == other._type &&
      _longitude == other._longitude &&
      _lattitude == other._lattitude &&
      _address == other._address &&
      _mobileNumber == other._mobileNumber &&
      _email == other._email &&
      _deliveryCharge == other._deliveryCharge &&
      _registrationId == other._registrationId &&
      _nic == other._nic &&
      _deliveryAccepted == other._deliveryAccepted &&
      _profilePicture == other._profilePicture &&
      DeepCollectionEquality().equals(_gallery, other._gallery) &&
      DeepCollectionEquality().equals(_rating, other._rating) &&
      DeepCollectionEquality().equals(_openingHours, other._openingHours) &&
      DeepCollectionEquality().equals(_orders, other._orders) &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Shop {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("type=" + "$_type" + ", ");
    buffer.write("longitude=" + (_longitude != null ? _longitude!.toString() : "null") + ", ");
    buffer.write("lattitude=" + (_lattitude != null ? _lattitude!.toString() : "null") + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("mobileNumber=" + "$_mobileNumber" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("deliveryCharge=" + (_deliveryCharge != null ? _deliveryCharge!.toString() : "null") + ", ");
    buffer.write("registrationId=" + "$_registrationId" + ", ");
    buffer.write("nic=" + "$_nic" + ", ");
    buffer.write("deliveryAccepted=" + (_deliveryAccepted != null ? _deliveryAccepted!.toString() : "null") + ", ");
    buffer.write("profilePicture=" + "$_profilePicture" + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Shop copyWith({String? id, String? name, String? type, int? longitude, int? lattitude, String? address, String? mobileNumber, String? email, int? deliveryCharge, String? registrationId, String? nic, int? deliveryAccepted, String? profilePicture, List<Gallery>? gallery, List<Rating>? rating, List<OpeningHours>? openingHours, List<ShopOrder>? orders, TemporalDateTime? updatedAt}) {
    return Shop(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      longitude: longitude ?? this.longitude,
      lattitude: lattitude ?? this.lattitude,
      address: address ?? this.address,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      email: email ?? this.email,
      deliveryCharge: deliveryCharge ?? this.deliveryCharge,
      registrationId: registrationId ?? this.registrationId,
      nic: nic ?? this.nic,
      deliveryAccepted: deliveryAccepted ?? this.deliveryAccepted,
      profilePicture: profilePicture ?? this.profilePicture,
      gallery: gallery ?? this.gallery,
      rating: rating ?? this.rating,
      openingHours: openingHours ?? this.openingHours,
      orders: orders ?? this.orders,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Shop.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _type = json['type'],
      _longitude = (json['longitude'] as num?)?.toInt(),
      _lattitude = (json['lattitude'] as num?)?.toInt(),
      _address = json['address'],
      _mobileNumber = json['mobileNumber'],
      _email = json['email'],
      _deliveryCharge = (json['deliveryCharge'] as num?)?.toInt(),
      _registrationId = json['registrationId'],
      _nic = json['nic'],
      _deliveryAccepted = (json['deliveryAccepted'] as num?)?.toInt(),
      _profilePicture = json['profilePicture'],
      _gallery = json['gallery'] is List
        ? (json['gallery'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Gallery.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _rating = json['rating'] is List
        ? (json['rating'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Rating.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _openingHours = json['openingHours'] is List
        ? (json['openingHours'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => OpeningHours.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _orders = json['orders'] is List
        ? (json['orders'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ShopOrder.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'type': _type, 'longitude': _longitude, 'lattitude': _lattitude, 'address': _address, 'mobileNumber': _mobileNumber, 'email': _email, 'deliveryCharge': _deliveryCharge, 'registrationId': _registrationId, 'nic': _nic, 'deliveryAccepted': _deliveryAccepted, 'profilePicture': _profilePicture, 'gallery': _gallery?.map((Gallery? e) => e?.toJson()).toList(), 'rating': _rating?.map((Rating? e) => e?.toJson()).toList(), 'openingHours': _openingHours?.map((OpeningHours? e) => e?.toJson()).toList(), 'orders': _orders?.map((ShopOrder? e) => e?.toJson()).toList(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "shop.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField LONGITUDE = QueryField(fieldName: "longitude");
  static final QueryField LATTITUDE = QueryField(fieldName: "lattitude");
  static final QueryField ADDRESS = QueryField(fieldName: "address");
  static final QueryField MOBILENUMBER = QueryField(fieldName: "mobileNumber");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField DELIVERYCHARGE = QueryField(fieldName: "deliveryCharge");
  static final QueryField REGISTRATIONID = QueryField(fieldName: "registrationId");
  static final QueryField NIC = QueryField(fieldName: "nic");
  static final QueryField DELIVERYACCEPTED = QueryField(fieldName: "deliveryAccepted");
  static final QueryField PROFILEPICTURE = QueryField(fieldName: "profilePicture");
  static final QueryField GALLERY = QueryField(
    fieldName: "gallery",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Gallery).toString()));
  static final QueryField RATING = QueryField(
    fieldName: "rating",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Rating).toString()));
  static final QueryField OPENINGHOURS = QueryField(
    fieldName: "openingHours",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (OpeningHours).toString()));
  static final QueryField ORDERS = QueryField(
    fieldName: "orders",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ShopOrder).toString()));
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Shop";
    modelSchemaDefinition.pluralName = "Shops";
    
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
      key: Shop.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.TYPE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LONGITUDE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.LATTITUDE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.ADDRESS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.MOBILENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.DELIVERYCHARGE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.REGISTRATIONID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.NIC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.DELIVERYACCEPTED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.PROFILEPICTURE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.GALLERY,
      isRequired: false,
      ofModelName: (Gallery).toString(),
      associatedKey: Gallery.SHOPGALLERYID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.RATING,
      isRequired: false,
      ofModelName: (Rating).toString(),
      associatedKey: Rating.SHOPRATINGID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.OPENINGHOURS,
      isRequired: false,
      ofModelName: (OpeningHours).toString(),
      associatedKey: OpeningHours.SHOPOPENINGHOURID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Shop.ORDERS,
      isRequired: false,
      ofModelName: (ShopOrder).toString(),
      associatedKey: ShopOrder.SHOP
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Shop.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ShopModelType extends ModelType<Shop> {
  const _ShopModelType();
  
  @override
  Shop fromJson(Map<String, dynamic> jsonData) {
    return Shop.fromJson(jsonData);
  }
}