import '../../enums/response_type.dart';
import '../../features/home/data/models/user.dart';
import '../../features/home/data/models/product.dart';

class ApiFactory {
  static dynamic parse(ResponseType type, Map<String, dynamic> json) {
    switch (type) {
      case ResponseType.user:
        return User.fromJson(json);

      case ResponseType.product:
        return Product.fromJson(json);
    }
  }
}