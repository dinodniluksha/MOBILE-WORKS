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


/** This is an auto generated class representing the Rating type in your schema. */
@immutable
class Rating extends Model {
  static const classType = const _RatingModelType();
  final String id;
  final String? _shopRatingID;
  final String? _userRatingID;
  final int? _Star5;
  final int? _Star4;
  final int? _Star3;
  final int? _Star2;
  final int? _Star1;
  final int? _overollRating;
  final Testimonial? _testimonial;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get shopRatingID {
    return _shopRatingID;
  }
  
  String? get userRatingID {
    return _userRatingID;
  }
  
  int get Star5 {
    try {
      return _Star5!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get Star4 {
    try {
      return _Star4!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get Star3 {
    try {
      return _Star3!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get Star2 {
    try {
      return _Star2!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get Star1 {
    try {
      return _Star1!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get overollRating {
    try {
      return _overollRating!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  Testimonial? get testimonial {
    return _testimonial;
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Rating._internal({required this.id, shopRatingID, userRatingID, required Star5, required Star4, required Star3, required Star2, required Star1, required overollRating, testimonial, required updatedAt}): _shopRatingID = shopRatingID, _userRatingID = userRatingID, _Star5 = Star5, _Star4 = Star4, _Star3 = Star3, _Star2 = Star2, _Star1 = Star1, _overollRating = overollRating, _testimonial = testimonial, _updatedAt = updatedAt;
  
  factory Rating({String? id, String? shopRatingID, String? userRatingID, required int Star5, required int Star4, required int Star3, required int Star2, required int Star1, required int overollRating, Testimonial? testimonial, required TemporalDateTime updatedAt}) {
    return Rating._internal(
      id: id == null ? UUID.getUUID() : id,
      shopRatingID: shopRatingID,
      userRatingID: userRatingID,
      Star5: Star5,
      Star4: Star4,
      Star3: Star3,
      Star2: Star2,
      Star1: Star1,
      overollRating: overollRating,
      testimonial: testimonial,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating &&
      id == other.id &&
      _shopRatingID == other._shopRatingID &&
      _userRatingID == other._userRatingID &&
      _Star5 == other._Star5 &&
      _Star4 == other._Star4 &&
      _Star3 == other._Star3 &&
      _Star2 == other._Star2 &&
      _Star1 == other._Star1 &&
      _overollRating == other._overollRating &&
      _testimonial == other._testimonial &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Rating {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shopRatingID=" + "$_shopRatingID" + ", ");
    buffer.write("userRatingID=" + "$_userRatingID" + ", ");
    buffer.write("Star5=" + (_Star5 != null ? _Star5!.toString() : "null") + ", ");
    buffer.write("Star4=" + (_Star4 != null ? _Star4!.toString() : "null") + ", ");
    buffer.write("Star3=" + (_Star3 != null ? _Star3!.toString() : "null") + ", ");
    buffer.write("Star2=" + (_Star2 != null ? _Star2!.toString() : "null") + ", ");
    buffer.write("Star1=" + (_Star1 != null ? _Star1!.toString() : "null") + ", ");
    buffer.write("overollRating=" + (_overollRating != null ? _overollRating!.toString() : "null") + ", ");
    buffer.write("testimonial=" + (_testimonial != null ? _testimonial!.toString() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Rating copyWith({String? id, String? shopRatingID, String? userRatingID, int? Star5, int? Star4, int? Star3, int? Star2, int? Star1, int? overollRating, Testimonial? testimonial, TemporalDateTime? updatedAt}) {
    return Rating(
      id: id ?? this.id,
      shopRatingID: shopRatingID ?? this.shopRatingID,
      userRatingID: userRatingID ?? this.userRatingID,
      Star5: Star5 ?? this.Star5,
      Star4: Star4 ?? this.Star4,
      Star3: Star3 ?? this.Star3,
      Star2: Star2 ?? this.Star2,
      Star1: Star1 ?? this.Star1,
      overollRating: overollRating ?? this.overollRating,
      testimonial: testimonial ?? this.testimonial,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Rating.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shopRatingID = json['shopRatingID'],
      _userRatingID = json['userRatingID'],
      _Star5 = (json['Star5'] as num?)?.toInt(),
      _Star4 = (json['Star4'] as num?)?.toInt(),
      _Star3 = (json['Star3'] as num?)?.toInt(),
      _Star2 = (json['Star2'] as num?)?.toInt(),
      _Star1 = (json['Star1'] as num?)?.toInt(),
      _overollRating = (json['overollRating'] as num?)?.toInt(),
      _testimonial = json['testimonial']?['serializedData'] != null
        ? Testimonial.fromJson(new Map<String, dynamic>.from(json['testimonial']['serializedData']))
        : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shopRatingID': _shopRatingID, 'userRatingID': _userRatingID, 'Star5': _Star5, 'Star4': _Star4, 'Star3': _Star3, 'Star2': _Star2, 'Star1': _Star1, 'overollRating': _overollRating, 'testimonial': _testimonial?.toJson(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "rating.id");
  static final QueryField SHOPRATINGID = QueryField(fieldName: "shopRatingID");
  static final QueryField USERRATINGID = QueryField(fieldName: "userRatingID");
  static final QueryField STAR5 = QueryField(fieldName: "Star5");
  static final QueryField STAR4 = QueryField(fieldName: "Star4");
  static final QueryField STAR3 = QueryField(fieldName: "Star3");
  static final QueryField STAR2 = QueryField(fieldName: "Star2");
  static final QueryField STAR1 = QueryField(fieldName: "Star1");
  static final QueryField OVEROLLRATING = QueryField(fieldName: "overollRating");
  static final QueryField TESTIMONIAL = QueryField(
    fieldName: "testimonial",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Testimonial).toString()));
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Rating";
    modelSchemaDefinition.pluralName = "Ratings";
    
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
      key: Rating.SHOPRATINGID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.USERRATINGID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.STAR5,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.STAR4,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.STAR3,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.STAR2,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.STAR1,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.OVEROLLRATING,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Rating.TESTIMONIAL,
      isRequired: false,
      targetName: "ratingTestimonialId",
      ofModelName: (Testimonial).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RatingModelType extends ModelType<Rating> {
  const _RatingModelType();
  
  @override
  Rating fromJson(Map<String, dynamic> jsonData) {
    return Rating.fromJson(jsonData);
  }
}