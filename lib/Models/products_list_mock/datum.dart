import 'categories.dart';
import 'image.dart';
import 'shop.dart';
import 'subcat.dart';

class Datum {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcat? subcat;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? color;
  String? size;
  bool? inWishlist;
  List<Image>? images;

  Datum({
    this.id,
    this.onSale,
    this.salePercent,
    this.sold,
    this.sliderNew,
    this.sliderRecent,
    this.sliderSold,
    this.date,
    this.title,
    this.categories,
    this.subcat,
    this.shop,
    this.price,
    this.saleTitle,
    this.salePrice,
    this.description,
    this.color,
    this.size,
    this.inWishlist,
    this.images,
  });

  @override
  String toString() {
    return 'Datum(id: $id, onSale: $onSale, salePercent: $salePercent, sold: $sold, sliderNew: $sliderNew, sliderRecent: $sliderRecent, sliderSold: $sliderSold, date: $date, title: $title, categories: $categories, subcat: $subcat, shop: $shop, price: $price, saleTitle: $saleTitle, salePrice: $salePrice, description: $description, color: $color, size: $size, inWishlist: $inWishlist, images: $images)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['_id'] as String?,
        onSale: json['on_sale'] as bool?,
        salePercent: json['sale_percent'] as int?,
        sold: json['sold'] as int?,
        sliderNew: json['slider_new'] as bool?,
        sliderRecent: json['slider_recent'] as bool?,
        sliderSold: json['slider_sold'] as bool?,
        date: json['date'] as String?,
        title: json['title'] as String?,
        categories: json['categories'] == null
            ? null
            : Categories.fromJson(json['categories'] as Map<String, dynamic>),
        subcat: json['subcat'] == null
            ? null
            : Subcat.fromJson(json['subcat'] as Map<String, dynamic>),
        shop: json['shop'] == null
            ? null
            : Shop.fromJson(json['shop'] as Map<String, dynamic>),
        price: json['price'] as String?,
        saleTitle: json['sale_title'] as String?,
        salePrice: json['sale_price'] as String?,
        description: json['description'] as String?,
        color: json['color'] as String?,
        size: json['size'] as String?,
        inWishlist: json['in_wishlist'] as bool?,
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'on_sale': onSale,
        'sale_percent': salePercent,
        'sold': sold,
        'slider_new': sliderNew,
        'slider_recent': sliderRecent,
        'slider_sold': sliderSold,
        'date': date,
        'title': title,
        'categories': categories?.toJson(),
        'subcat': subcat?.toJson(),
        'shop': shop?.toJson(),
        'price': price,
        'sale_title': saleTitle,
        'sale_price': salePrice,
        'description': description,
        'color': color,
        'size': size,
        'in_wishlist': inWishlist,
        'images': images?.map((e) => e.toJson()).toList(),
      };
}
