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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ShopOrder type in your schema. */
@immutable
class ShopOrder extends Model {
  static const classType = const _ShopOrderModelType();
  final String id;
  final Order? _order;
  final Shop? _shop;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Order get order {
    try {
      return _order!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  Shop get shop {
    try {
      return _shop!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const ShopOrder._internal({required this.id, required order, required shop}): _order = order, _shop = shop;
  
  factory ShopOrder({String? id, required Order order, required Shop shop}) {
    return ShopOrder._internal(
      id: id == null ? UUID.getUUID() : id,
      order: order,
      shop: shop);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopOrder &&
      id == other.id &&
      _order == other._order &&
      _shop == other._shop;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopOrder {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("order=" + (_order != null ? _order!.toString() : "null") + ", ");
    buffer.write("shop=" + (_shop != null ? _shop!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopOrder copyWith({String? id, Order? order, Shop? shop}) {
    return ShopOrder(
      id: id ?? this.id,
      order: order ?? this.order,
      shop: shop ?? this.shop);
  }
  
  ShopOrder.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _order = json['order']?['serializedData'] != null
        ? Order.fromJson(new Map<String, dynamic>.from(json['order']['serializedData']))
        : null,
      _shop = json['shop']?['serializedData'] != null
        ? Shop.fromJson(new Map<String, dynamic>.from(json['shop']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'order': _order?.toJson(), 'shop': _shop?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "shopOrder.id");
  static final QueryField ORDER = QueryField(
    fieldName: "order",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Order).toString()));
  static final QueryField SHOP = QueryField(
    fieldName: "shop",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Shop).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopOrder";
    modelSchemaDefinition.pluralName = "ShopOrders";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ShopOrder.ORDER,
      isRequired: true,
      targetName: "orderID",
      ofModelName: (Order).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ShopOrder.SHOP,
      isRequired: true,
      targetName: "shopID",
      ofModelName: (Shop).toString()
    ));
  });
}

class _ShopOrderModelType extends ModelType<ShopOrder> {
  const _ShopOrderModelType();
  
  @override
  ShopOrder fromJson(Map<String, dynamic> jsonData) {
    return ShopOrder.fromJson(jsonData);
  }
}