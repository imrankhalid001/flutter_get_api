class Subcat {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;

  Subcat({this.id, this.type, this.salePercent, this.date, this.name});

  @override
  String toString() {
    return 'Subcat(id: $id, type: $type, salePercent: $salePercent, date: $date, name: $name)';
  }

  factory Subcat.fromJson(Map<String, dynamic> json) => Subcat(
        id: json['_id'] as String?,
        type: json['type'] as String?,
        salePercent: json['sale_percent'] as int?,
        date: json['date'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'type': type,
        'sale_percent': salePercent,
        'date': date,
        'name': name,
      };
}
