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
import 'Gallery.dart';
import 'OpeningHours.dart';
import 'Order.dart';
import 'Rating.dart';
import 'Shop.dart';
import 'ShopOrder.dart';
import 'Testimonial.dart';
import 'User.dart';

export 'Gallery.dart';
export 'OpeningHours.dart';
export 'Order.dart';
export 'Rating.dart';
export 'Shop.dart';
export 'ShopOrder.dart';
export 'ShopType.dart';
export 'Testimonial.dart';
export 'User.dart';
export 'WeekDays.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "28fe374820ff00bc04ec9a882d10f17f";
  @override
  List<ModelSchema> modelSchemas = [Gallery.schema, OpeningHours.schema, Order.schema, Rating.schema, Shop.schema, ShopOrder.schema, Testimonial.schema, User.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
    case "Gallery": {
    return Gallery.classType;
    }
    break;
    case "OpeningHours": {
    return OpeningHours.classType;
    }
    break;
    case "Order": {
    return Order.classType;
    }
    break;
    case "Rating": {
    return Rating.classType;
    }
    break;
    case "Shop": {
    return Shop.classType;
    }
    break;
    case "ShopOrder": {
    return ShopOrder.classType;
    }
    break;
    case "Testimonial": {
    return Testimonial.classType;
    }
    break;
    case "User": {
    return User.classType;
    }
    break;
    default: {
    throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
    }
  }
}