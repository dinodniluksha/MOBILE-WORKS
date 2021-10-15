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


/** This is an auto generated class representing the Testimonial type in your schema. */
@immutable
class Testimonial extends Model {
  static const classType = const _TestimonialModelType();
  final String id;
  final String? _comment;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get comment {
    try {
      return _comment!;
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
  
  const Testimonial._internal({required this.id, required comment, required updatedAt}): _comment = comment, _updatedAt = updatedAt;
  
  factory Testimonial({String? id, required String comment, required TemporalDateTime updatedAt}) {
    return Testimonial._internal(
      id: id == null ? UUID.getUUID() : id,
      comment: comment,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Testimonial &&
      id == other.id &&
      _comment == other._comment &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Testimonial {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Testimonial copyWith({String? id, String? comment, TemporalDateTime? updatedAt}) {
    return Testimonial(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Testimonial.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _comment = json['comment'],
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'comment': _comment, 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "testimonial.id");
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Testimonial";
    modelSchemaDefinition.pluralName = "Testimonials";
    
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
      key: Testimonial.COMMENT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Testimonial.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _TestimonialModelType extends ModelType<Testimonial> {
  const _TestimonialModelType();
  
  @override
  Testimonial fromJson(Map<String, dynamic> jsonData) {
    return Testimonial.fromJson(jsonData);
  }
}