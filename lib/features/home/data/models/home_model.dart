import 'package:clean_architecture_shop_app/features/home/domain/entities/home_entity.dart';

class HomeModel extends HomeEntity {
  HomeModel({
    String? message,
    String? status,
    Data? data,
  }) : super(
          message: message,
          status: status,
          data: data,
        );

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      data: json['data'],
      message: json['message'],
      status: json['status'],
    );

    // if (json["message"] is String) {
    //   message = json["message"];
    // }
    // if (json["status"] is String) {
    //   status = json["status"];
    // }
    // if (json["data"] is Map) {
    //   data = json["data"] == null ? null : Data.fromJson(json["data"]);
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
    _data["status"] = status;
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<Sliders>? sliders;
  List<Banners>? banners;
  List<Categories>? categories;
  List<SuggestionProducts>? suggestionProducts;
  String? nearShops;

  Data(
      {this.sliders,
      this.banners,
      this.categories,
      this.suggestionProducts,
      this.nearShops});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["sliders"] is List) {
      sliders = json["sliders"] == null
          ? null
          : (json["sliders"] as List).map((e) => Sliders.fromJson(e)).toList();
    }
    if (json["banners"] is List) {
      banners = json["banners"] == null
          ? null
          : (json["banners"] as List).map((e) => Banners.fromJson(e)).toList();
    }
    if (json["categories"] is List) {
      categories = json["categories"] == null
          ? null
          : (json["categories"] as List)
              .map((e) => Categories.fromJson(e))
              .toList();
    }
    if (json["suggestionProducts"] is List) {
      suggestionProducts = json["suggestionProducts"] == null
          ? null
          : (json["suggestionProducts"] as List)
              .map((e) => SuggestionProducts.fromJson(e))
              .toList();
    }
    if (json["nearShops"] is String) {
      nearShops = json["nearShops"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (sliders != null) {
      _data["sliders"] = sliders?.map((e) => e.toJson()).toList();
    }
    if (banners != null) {
      _data["banners"] = banners?.map((e) => e.toJson()).toList();
    }
    if (categories != null) {
      _data["categories"] = categories?.map((e) => e.toJson()).toList();
    }
    if (suggestionProducts != null) {
      _data["suggestionProducts"] =
          suggestionProducts?.map((e) => e.toJson()).toList();
    }
    _data["nearShops"] = nearShops;
    return _data;
  }
}

class SuggestionProducts {
  String? title;
  String? location;
  List<Items>? items;
  dynamic priority;
  int? updatedAt;
  String? image;

  SuggestionProducts(
      {this.title,
      this.location,
      this.items,
      this.priority,
      this.updatedAt,
      this.image});

  SuggestionProducts.fromJson(Map<String, dynamic> json) {
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["items"] is List) {
      items = json["items"] == null
          ? null
          : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    }
    priority = json["priority"];
    if (json["updated_at"] is int) {
      updatedAt = json["updated_at"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["location"] = location;
    if (items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    _data["priority"] = priority;
    _data["updated_at"] = updatedAt;
    _data["image"] = image;
    return _data;
  }
}

class Items {
  int? id;
  String? image;
  String? name;
  String? price;
  String? priceBeforDiscount;
  int? discount;
  int? callStatus;
  int? specialDiscount;
  int? star;
  String? category;

  Items(
      {this.id,
      this.image,
      this.name,
      this.price,
      this.priceBeforDiscount,
      this.discount,
      this.callStatus,
      this.specialDiscount,
      this.star,
      this.category});

  Items.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["price"] is String) {
      price = json["price"];
    }
    if (json["priceBeforDiscount"] is String) {
      priceBeforDiscount = json["priceBeforDiscount"];
    }
    if (json["discount"] is int) {
      discount = json["discount"];
    }
    if (json["callStatus"] is int) {
      callStatus = json["callStatus"];
    }
    if (json["specialDiscount"] is int) {
      specialDiscount = json["specialDiscount"];
    }
    if (json["star"] is int) {
      star = json["star"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["name"] = name;
    _data["price"] = price;
    _data["priceBeforDiscount"] = priceBeforDiscount;
    _data["discount"] = discount;
    _data["callStatus"] = callStatus;
    _data["specialDiscount"] = specialDiscount;
    _data["star"] = star;
    _data["category"] = category;
    return _data;
  }
}

class Categories {
  int? id;
  String? title;
  String? img;
  String? icon;
  List<Childs>? childs;

  Categories({this.id, this.title, this.img, this.icon, this.childs});

  Categories.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["img"] is String) {
      img = json["img"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["childs"] is List) {
      childs = json["childs"] == null
          ? null
          : (json["childs"] as List).map((e) => Childs.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["img"] = img;
    _data["icon"] = icon;
    if (childs != null) {
      _data["childs"] = childs?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Childs {
  int? id;
  String? title;
  String? img;
  String? icon;
  dynamic childs;

  Childs({this.id, this.title, this.img, this.icon, this.childs});

  Childs.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["img"] is String) {
      img = json["img"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    childs = json["childs"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["img"] = img;
    _data["icon"] = icon;
    _data["childs"] = childs;
    return _data;
  }
}

class Banners {
  String? sizeClass;
  String? location;
  String? image;
  dynamic link;
  dynamic priority;
  int? categoryId;
  int? updatedAt;

  Banners(
      {this.sizeClass,
      this.location,
      this.image,
      this.link,
      this.priority,
      this.categoryId,
      this.updatedAt});

  Banners.fromJson(Map<String, dynamic> json) {
    if (json["sizeClass"] is String) {
      sizeClass = json["sizeClass"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    link = json["link"];
    priority = json["priority"];
    if (json["category_id"] is int) {
      categoryId = json["category_id"];
    }
    if (json["updated_at"] is int) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["sizeClass"] = sizeClass;
    _data["location"] = location;
    _data["image"] = image;
    _data["link"] = link;
    _data["priority"] = priority;
    _data["category_id"] = categoryId;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class Sliders {
  String? img;
  dynamic link;
  int? updatedAt;

  Sliders({this.img, this.link, this.updatedAt});

  Sliders.fromJson(Map<String, dynamic> json) {
    if (json["img"] is String) {
      img = json["img"];
    }
    link = json["link"];
    if (json["updated_at"] is int) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["img"] = img;
    _data["link"] = link;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}
