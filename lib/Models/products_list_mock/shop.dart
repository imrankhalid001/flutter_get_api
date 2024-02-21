class Shop {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;

  Shop({
    this.id,
    this.isActive,
    this.createdAt,
    this.name,
    this.description,
    this.shopemail,
    this.shopaddress,
    this.shopcity,
    this.userid,
    this.image,
  });

  @override
  String toString() {
    return 'Shop(id: $id, isActive: $isActive, createdAt: $createdAt, name: $name, description: $description, shopemail: $shopemail, shopaddress: $shopaddress, shopcity: $shopcity, userid: $userid, image: $image)';
  }

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: json['_id'] as String?,
        isActive: json['is_active'] as bool?,
        createdAt: json['created_At'] as String?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        shopemail: json['shopemail'] as String?,
        shopaddress: json['shopaddress'] as String?,
        shopcity: json['shopcity'] as String?,
        userid: json['userid'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'is_active': isActive,
        'created_At': createdAt,
        'name': name,
        'description': description,
        'shopemail': shopemail,
        'shopaddress': shopaddress,
        'shopcity': shopcity,
        'userid': userid,
        'image': image,
      };
}
