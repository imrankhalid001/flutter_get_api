class Categories {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;
  String? image;

  Categories({
    this.id,
    this.type,
    this.salePercent,
    this.date,
    this.name,
    this.image,
  });

  @override
  String toString() {
    return 'Categories(id: $id, type: $type, salePercent: $salePercent, date: $date, name: $name, image: $image)';
  }

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json['_id'] as String?,
        type: json['type'] as String?,
        salePercent: json['sale_percent'] as int?,
        date: json['date'] as String?,
        name: json['name'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'type': type,
        'sale_percent': salePercent,
        'date': date,
        'name': name,
        'image': image,
      };
}
