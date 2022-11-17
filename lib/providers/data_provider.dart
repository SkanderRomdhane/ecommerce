import 'package:ecommerce_test/model/product_model.dart';
import 'package:ecommerce_test/services/product_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDataProvider = FutureProvider<List<ProductModel>>((ref) async {
  return ref.read(apiProvider).getProduct();
});
