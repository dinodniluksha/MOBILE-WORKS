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


/** This is an auto generated class representing the OpeningHours type in your schema. */
@immutable
class OpeningHours extends Model {
  static const classType = const _OpeningHoursModelType();
  final String id;
  final String? _shopOpeningHourID;
  final WeekDays? _day;
  final String? _to;
  final String? _from;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get shopOpeningHourID {
    try {
      return _shopOpeningHourID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  WeekDays get day {
    try {
      return _day!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get to {
    try {
      return _to!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get from {
    try {
      return _from!;
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
  
  const OpeningHours._internal({required this.id, required shopOpeningHourID, required day, required to, required from, required updatedAt}): _shopOpeningHourID = shopOpeningHourID, _day = day, _to = to, _from = from, _updatedAt = updatedAt;
  
  factory OpeningHours({String? id, required String shopOpeningHourID, required WeekDays day, required String to, required String from, required TemporalDateTime updatedAt}) {
    return OpeningHours._internal(
      id: id == null ? UUID.getUUID() : id,
      shopOpeningHourID: shopOpeningHourID,
      day: day,
      to: to,
      from: from,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpeningHours &&
      id == other.id &&
      _shopOpeningHourID == other._shopOpeningHourID &&
      _day == other._day &&
      _to == other._to &&
      _from == other._from &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OpeningHours {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shopOpeningHourID=" + "$_shopOpeningHourID" + ", ");
    buffer.write("day=" + (_day != null ? enumToString(_day)! : "null") + ", ");
    buffer.write("to=" + "$_to" + ", ");
    buffer.write("from=" + "$_from" + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OpeningHours copyWith({String? id, String? shopOpeningHourID, WeekDays? day, String? to, String? from, TemporalDateTime? updatedAt}) {
    return OpeningHours(
      id: id ?? this.id,
      shopOpeningHourID: shopOpeningHourID ?? this.shopOpeningHourID,
      day: day ?? this.day,
      to: to ?? this.to,
      from: from ?? this.from,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  OpeningHours.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shopOpeningHourID = json['shopOpeningHourID'],
      _day = enumFromString<WeekDays>(json['day'], WeekDays.values),
      _to = json['to'],
      _from = json['from'],
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shopOpeningHourID': _shopOpeningHourID, 'day': enumToString(_day), 'to': _to, 'from': _from, 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "openingHours.id");
  static final QueryField SHOPOPENINGHOURID = QueryField(fieldName: "shopOpeningHourID");
  static final QueryField DAY = QueryField(fieldName: "day");
  static final QueryField TO = QueryField(fieldName: "to");
  static final QueryField FROM = QueryField(fieldName: "from");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OpeningHours";
    modelSchemaDefinition.pluralName = "OpeningHours";
    
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
      key: OpeningHours.SHOPOPENINGHOURID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OpeningHours.DAY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OpeningHours.TO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OpeningHours.FROM,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: OpeningHours.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _OpeningHoursModelType extends ModelType<OpeningHours> {
  const _OpeningHoursModelType();
  
  @override
  OpeningHours fromJson(Map<String, dynamic> jsonData) {
    return OpeningHours.fromJson(jsonData);
  }
}