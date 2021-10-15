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


/** This is an auto generated class representing the Order type in your schema. */
@immutable
class Order extends Model {
  static const classType = const _OrderModelType();
  final String id;
  final String? _userID;
  final List<ShopType>? _type;
  final String? _state;
  final String? _note;
  final int? _billAmount;
  final int? _deliveryRequested;
  final int? _deliveryAccepted;
  final int? _deliveryState;
  final String? _pickupTime;
  final List<Gallery>? _gallery;
  final String? _deliveryTime;
  final Rating? _rating;
  final List<ShopOrder>? _shops;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get userID {
    try {
      return _userID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<ShopType>? get type {
    return _type;
  }
  
  String get state {
    try {
      return _state!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get note {
    try {
      return _note!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int? get billAmount {
    return _billAmount;
  }
  
  int get deliveryRequested {
    try {
      return _deliveryRequested!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get deliveryAccepted {
    try {
      return _deliveryAccepted!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get deliveryState {
    try {
      return _deliveryState!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get pickupTime {
    try {
      return _pickupTime!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<Gallery> get gallery {
    try {
      return _gallery!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get deliveryTime {
    try {
      return _deliveryTime!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  Rating? get rating {
    return _rating;
  }
  
  List<ShopOrder>? get shops {
    return _shops;
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Order._internal({required this.id, required userID, type, required state, required note, billAmount, required deliveryRequested, required deliveryAccepted, required deliveryState, required pickupTime, required gallery, required deliveryTime, rating, shops, required updatedAt}): _userID = userID, _type = type, _state = state, _note = note, _billAmount = billAmount, _deliveryRequested = deliveryRequested, _deliveryAccepted = deliveryAccepted, _deliveryState = deliveryState, _pickupTime = pickupTime, _gallery = gallery, _deliveryTime = deliveryTime, _rating = rating, _shops = shops, _updatedAt = updatedAt;
  
  factory Order({String? id, required String userID, List<ShopType>? type, required String state, required String note, int? billAmount, required int deliveryRequested, required int deliveryAccepted, required int deliveryState, required String pickupTime, required List<Gallery> gallery, required String deliveryTime, Rating? rating, List<ShopOrder>? shops, required TemporalDateTime updatedAt}) {
    return Order._internal(
      id: id == null ? UUID.getUUID() : id,
      userID: userID,
      type: type != null ? List<ShopType>.unmodifiable(type) : type,
      state: state,
      note: note,
      billAmount: billAmount,
      deliveryRequested: deliveryRequested,
      deliveryAccepted: deliveryAccepted,
      deliveryState: deliveryState,
      pickupTime: pickupTime,
      gallery: gallery != null ? List<Gallery>.unmodifiable(gallery) : gallery,
      deliveryTime: deliveryTime,
      rating: rating,
      shops: shops != null ? List<ShopOrder>.unmodifiable(shops) : shops,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
      id == other.id &&
      _userID == other._userID &&
      DeepCollectionEquality().equals(_type, other._type) &&
      _state == other._state &&
      _note == other._note &&
      _billAmount == other._billAmount &&
      _deliveryRequested == other._deliveryRequested &&
      _deliveryAccepted == other._deliveryAccepted &&
      _deliveryState == other._deliveryState &&
      _pickupTime == other._pickupTime &&
      DeepCollectionEquality().equals(_gallery, other._gallery) &&
      _deliveryTime == other._deliveryTime &&
      _rating == other._rating &&
      DeepCollectionEquality().equals(_shops, other._shops) &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Order {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userID=" + "$_userID" + ", ");
    buffer.write("type=" + (_type != null ? _type!.map((e) => enumToString(e)).toString() : "null") + ", ");
    buffer.write("state=" + "$_state" + ", ");
    buffer.write("note=" + "$_note" + ", ");
    buffer.write("billAmount=" + (_billAmount != null ? _billAmount!.toString() : "null") + ", ");
    buffer.write("deliveryRequested=" + (_deliveryRequested != null ? _deliveryRequested!.toString() : "null") + ", ");
    buffer.write("deliveryAccepted=" + (_deliveryAccepted != null ? _deliveryAccepted!.toString() : "null") + ", ");
    buffer.write("deliveryState=" + (_deliveryState != null ? _deliveryState!.toString() : "null") + ", ");
    buffer.write("pickupTime=" + "$_pickupTime" + ", ");
    buffer.write("deliveryTime=" + "$_deliveryTime" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Order copyWith({String? id, String? userID, List<ShopType>? type, String? state, String? note, int? billAmount, int? deliveryRequested, int? deliveryAccepted, int? deliveryState, String? pickupTime, List<Gallery>? gallery, String? deliveryTime, Rating? rating, List<ShopOrder>? shops, TemporalDateTime? updatedAt}) {
    return Order(
      id: id ?? this.id,
      userID: userID ?? this.userID,
      type: type ?? this.type,
      state: state ?? this.state,
      note: note ?? this.note,
      billAmount: billAmount ?? this.billAmount,
      deliveryRequested: deliveryRequested ?? this.deliveryRequested,
      deliveryAccepted: deliveryAccepted ?? this.deliveryAccepted,
      deliveryState: deliveryState ?? this.deliveryState,
      pickupTime: pickupTime ?? this.pickupTime,
      gallery: gallery ?? this.gallery,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      rating: rating ?? this.rating,
      shops: shops ?? this.shops,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Order.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userID = json['userID'],
      _type = json['type'] is List
        ? (json['type'] as List)
          .map((e) => enumFromString<ShopType>(e, ShopType.values)!)
          .toList()
        : null,
      _state = json['state'],
      _note = json['note'],
      _billAmount = (json['billAmount'] as num?)?.toInt(),
      _deliveryRequested = (json['deliveryRequested'] as num?)?.toInt(),
      _deliveryAccepted = (json['deliveryAccepted'] as num?)?.toInt(),
      _deliveryState = (json['deliveryState'] as num?)?.toInt(),
      _pickupTime = json['pickupTime'],
      _gallery = json['gallery'] is List
        ? (json['gallery'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Gallery.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _deliveryTime = json['deliveryTime'],
      _rating = json['rating']?['serializedData'] != null
        ? Rating.fromJson(new Map<String, dynamic>.from(json['rating']['serializedData']))
        : null,
      _shops = json['shops'] is List
        ? (json['shops'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ShopOrder.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userID': _userID, 'type': _type?.map((e) => enumToString(e)).toList(), 'state': _state, 'note': _note, 'billAmount': _billAmount, 'deliveryRequested': _deliveryRequested, 'deliveryAccepted': _deliveryAccepted, 'deliveryState': _deliveryState, 'pickupTime': _pickupTime, 'gallery': _gallery?.map((Gallery? e) => e?.toJson()).toList(), 'deliveryTime': _deliveryTime, 'rating': _rating?.toJson(), 'shops': _shops?.map((ShopOrder? e) => e?.toJson()).toList(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "order.id");
  static final QueryField USERID = QueryField(fieldName: "userID");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField STATE = QueryField(fieldName: "state");
  static final QueryField NOTE = QueryField(fieldName: "note");
  static final QueryField BILLAMOUNT = QueryField(fieldName: "billAmount");
  static final QueryField DELIVERYREQUESTED = QueryField(fieldName: "deliveryRequested");
  static final QueryField DELIVERYACCEPTED = QueryField(fieldName: "deliveryAccepted");
  static final QueryField DELIVERYSTATE = QueryField(fieldName: "deliveryState");
  static final QueryField PICKUPTIME = QueryField(fieldName: "pickupTime");
  static final QueryField GALLERY = QueryField(
    fieldName: "gallery",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Gallery).toString()));
  static final QueryField DELIVERYTIME = QueryField(fieldName: "deliveryTime");
  static final QueryField RATING = QueryField(
    fieldName: "rating",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Rating).toString()));
  static final QueryField SHOPS = QueryField(
    fieldName: "shops",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ShopOrder).toString()));
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Order";
    modelSchemaDefinition.pluralName = "Orders";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        operations: [
          ModelOperation.CREATE
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.TYPE,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.STATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.NOTE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.BILLAMOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.DELIVERYREQUESTED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.DELIVERYACCEPTED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.DELIVERYSTATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.PICKUPTIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Order.GALLERY,
      isRequired: false,
      ofModelName: (Gallery).toString(),
      associatedKey: Gallery.SHOPGALLERYID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.DELIVERYTIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Order.RATING,
      isRequired: false,
      targetName: "orderRatingId",
      ofModelName: (Rating).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Order.SHOPS,
      isRequired: false,
      ofModelName: (ShopOrder).toString(),
      associatedKey: ShopOrder.ORDER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Order.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _OrderModelType extends ModelType<Order> {
  const _OrderModelType();
  
  @override
  Order fromJson(Map<String, dynamic> jsonData) {
    return Order.fromJson(jsonData);
  }
}