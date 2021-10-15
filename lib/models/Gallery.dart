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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Gallery type in your schema. */
@immutable
class Gallery extends Model {
  static const classType = const _GalleryModelType();
  final String id;
  final String? _shopGalleryID;
  final String? _orderGalleryID;
  final String? _url;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get shopGalleryID {
    return _shopGalleryID;
  }
  
  String? get orderGalleryID {
    return _orderGalleryID;
  }
  
  String get url {
    try {
      return _url!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Gallery._internal({required this.id, shopGalleryID, orderGalleryID, required url, required updatedAt}): _shopGalleryID = shopGalleryID, _orderGalleryID = orderGalleryID, _url = url, _updatedAt = updatedAt;
  
  factory Gallery({String? id, String? shopGalleryID, String? orderGalleryID, required String url, required TemporalDateTime updatedAt}) {
    return Gallery._internal(
      id: id == null ? UUID.getUUID() : id,
      shopGalleryID: shopGalleryID,
      orderGalleryID: orderGalleryID,
      url: url,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gallery &&
      id == other.id &&
      _shopGalleryID == other._shopGalleryID &&
      _orderGalleryID == other._orderGalleryID &&
      _url == other._url &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Gallery {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shopGalleryID=" + "$_shopGalleryID" + ", ");
    buffer.write("orderGalleryID=" + "$_orderGalleryID" + ", ");
    buffer.write("url=" + "$_url" + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Gallery copyWith({String? id, String? shopGalleryID, String? orderGalleryID, String? url, TemporalDateTime? updatedAt}) {
    return Gallery(
      id: id ?? this.id,
      shopGalleryID: shopGalleryID ?? this.shopGalleryID,
      orderGalleryID: orderGalleryID ?? this.orderGalleryID,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Gallery.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shopGalleryID = json['shopGalleryID'],
      _orderGalleryID = json['orderGalleryID'],
      _url = json['url'],
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shopGalleryID': _shopGalleryID, 'orderGalleryID': _orderGalleryID, 'url': _url, 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "gallery.id");
  static final QueryField SHOPGALLERYID = QueryField(fieldName: "shopGalleryID");
  static final QueryField ORDERGALLERYID = QueryField(fieldName: "orderGalleryID");
  static final QueryField URL = QueryField(fieldName: "url");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Gallery";
    modelSchemaDefinition.pluralName = "Galleries";
    
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
      key: Gallery.SHOPGALLERYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Gallery.ORDERGALLERYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Gallery.URL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Gallery.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _GalleryModelType extends ModelType<Gallery> {
  const _GalleryModelType();
  
  @override
  Gallery fromJson(Map<String, dynamic> jsonData) {
    return Gallery.fromJson(jsonData);
  }
}