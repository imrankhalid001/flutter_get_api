import 'datum.dart';

class ProductsListMock {
  bool? success;
  String? message;
  List<Datum>? data;

  ProductsListMock({this.success, this.message, this.data});

  @override
  String toString() {
    return 'ProductsListMock(success: $success, message: $message, data: $data)';
  }

  factory ProductsListMock.fromJson(Map<String, dynamic> json) {
    return ProductsListMock(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
